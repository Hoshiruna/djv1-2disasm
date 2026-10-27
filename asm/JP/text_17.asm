; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text17Msgs0:
    db LOW(Text17Message00), HIGH(Text17Message00)
    db LOW(Text17Message01), HIGH(Text17Message01)
    db LOW(Text17Message02), HIGH(Text17Message02)
    db LOW(Text17Message03), HIGH(Text17Message03)
    db LOW(Text17Message04), HIGH(Text17Message04)
    db LOW(Text17Message05), HIGH(Text17Message05)
    db LOW(Text17Message06), HIGH(Text17Message06)
    db LOW(Text17Message07), HIGH(Text17Message07)
    db LOW(Text17Message08), HIGH(Text17Message08)
    db LOW(Text17Message09), HIGH(Text17Message09)
    db LOW(Text17Message0A), HIGH(Text17Message0A)
    db LOW(Text17Message0B), HIGH(Text17Message0B)
    db LOW(Text17Message0C), HIGH(Text17Message0C)
    db LOW(Text17Message0D), HIGH(Text17Message0D)
    db LOW(Text17Message0E), HIGH(Text17Message0E)
    db LOW(Text17Message0F), HIGH(Text17Message0F)
    db LOW(Text17Message10), HIGH(Text17Message10)
    db LOW(Text17Message11), HIGH(Text17Message11)
    db LOW(Text17Message12), HIGH(Text17Message12)
    db LOW(Text17Message13), HIGH(Text17Message13)
    db LOW(Text17Message14), HIGH(Text17Message14)
    db LOW(Text17Message15), HIGH(Text17Message15)
    db LOW(Text17Message16), HIGH(Text17Message16)
    db LOW(Text17Message17), HIGH(Text17Message17)
    db LOW(Text17Message18), HIGH(Text17Message18)
    db LOW(Text17Message19), HIGH(Text17Message19)
    db LOW(Text17Message1A), HIGH(Text17Message1A)
    db LOW(Text17Message1B), HIGH(Text17Message1B)
    db LOW(Text17Message1C), HIGH(Text17Message1C)
    db LOW(Text17Message1D), HIGH(Text17Message1D)
    db LOW(Text17Message1E), HIGH(Text17Message1E)
    db LOW(Text17Message1F), HIGH(Text17Message1F)
    db LOW(Text17Message20), HIGH(Text17Message20)
    db LOW(Text17Message21), HIGH(Text17Message21)
    db LOW(Text17Message22), HIGH(Text17Message22)
    db LOW(Text17Message23), HIGH(Text17Message23)
    db LOW(Text17Message24), HIGH(Text17Message24)
    db LOW(Text17Message25), HIGH(Text17Message25)
    db LOW(Text17Message26), HIGH(Text17Message26)
    db LOW(Text17Message27), HIGH(Text17Message27)
    db LOW(Text17Message28), HIGH(Text17Message28)
    db LOW(Text17Message29), HIGH(Text17Message29)
    db LOW(Text17Message2A), HIGH(Text17Message2A)
    db LOW(Text17Message2B), HIGH(Text17Message2B)
    db LOW(Text17Message2C), HIGH(Text17Message2C)
    db LOW(Text17Message2D), HIGH(Text17Message2D)
    db LOW(Text17Message2E), HIGH(Text17Message2E)
    db LOW(Text17Message2F), HIGH(Text17Message2F)
    db LOW(Text17Message30), HIGH(Text17Message30)
    db LOW(Text17Message31), HIGH(Text17Message31)
    db LOW(Text17Message32), HIGH(Text17Message32)
    db LOW(Text17Message33), HIGH(Text17Message33)
    db LOW(Text17Message34), HIGH(Text17Message34)
    db LOW(Text17Message35), HIGH(Text17Message35)
    db LOW(Text17Message36), HIGH(Text17Message36)
    db LOW(Text17Message37), HIGH(Text17Message37)
    db LOW(Text17Message38), HIGH(Text17Message38)
    db LOW(Text17Message39), HIGH(Text17Message39)
    db LOW(Text17Message3A), HIGH(Text17Message3A)
    db LOW(Text17Message3B), HIGH(Text17Message3B)
    db LOW(Text17Message3C), HIGH(Text17Message3C)
    db LOW(Text17Message3D), HIGH(Text17Message3D)
    db LOW(Text17Message3E), HIGH(Text17Message3E)
    db LOW(Text17Message3F), HIGH(Text17Message3F)
; Sixty-four message pointers for one text group.
Text17Msgs1:
    db LOW(Text17Message40), HIGH(Text17Message40)
    db LOW(Text17Message41), HIGH(Text17Message41)
    db LOW(Text17Message42), HIGH(Text17Message42)
    db LOW(Text17Message43), HIGH(Text17Message43)
    db LOW(Text17Message44), HIGH(Text17Message44)
    db LOW(Text17Message45), HIGH(Text17Message45)
    db LOW(Text17Message46), HIGH(Text17Message46)
    db LOW(Text17Message47), HIGH(Text17Message47)
    db LOW(Text17Message48), HIGH(Text17Message48)
    db LOW(Text17Message49), HIGH(Text17Message49)
    db LOW(Text17Message4A), HIGH(Text17Message4A)
    db LOW(Text17Message4B), HIGH(Text17Message4B)
    db LOW(Text17Message4C), HIGH(Text17Message4C)
    db LOW(Text17Message4D), HIGH(Text17Message4D)
    db LOW(Text17Message4E), HIGH(Text17Message4E)
    db LOW(Text17Message4F), HIGH(Text17Message4F)
    db LOW(Text17Message50), HIGH(Text17Message50)
    db LOW(Text17Message51), HIGH(Text17Message51)
    db LOW(Text17Message52), HIGH(Text17Message52)
    db LOW(Text17Message53), HIGH(Text17Message53)
    db LOW(Text17Message54), HIGH(Text17Message54)
    db LOW(Text17Message55), HIGH(Text17Message55)
    db LOW(Text17Message56), HIGH(Text17Message56)
    db LOW(Text17Message57), HIGH(Text17Message57)
    db LOW(Text17Message58), HIGH(Text17Message58)
    db LOW(Text17Message59), HIGH(Text17Message59)
    db LOW(Text17Message5A), HIGH(Text17Message5A)
    db LOW(Text17Message5B), HIGH(Text17Message5B)
    db LOW(Text17Message5C), HIGH(Text17Message5C)
    db LOW(Text17Message5D), HIGH(Text17Message5D)
    db LOW(Text17Message5E), HIGH(Text17Message5E)
    db LOW(Text17Message5F), HIGH(Text17Message5F)
    db LOW(Text17Message60), HIGH(Text17Message60)
    db LOW(Text17Message61), HIGH(Text17Message61)
    db LOW(Text17Message62), HIGH(Text17Message62)
    db LOW(Text17Message63), HIGH(Text17Message63)
    db LOW(Text17Message64), HIGH(Text17Message64)
    db LOW(Text17Message65), HIGH(Text17Message65)
    db LOW(Text17Message66), HIGH(Text17Message66)
    db LOW(Text17Message67)
jr_017_40cf:
    db HIGH(Text17Message67)
    db LOW(Text17Message68), HIGH(Text17Message68)
    db LOW(Text17Message69), HIGH(Text17Message69)
    db LOW(Text17Message6A), HIGH(Text17Message6A)
    db LOW(Text17Message6B), HIGH(Text17Message6B)
    db LOW(Text17Message6C), HIGH(Text17Message6C)
    db LOW(Text17Message6D), HIGH(Text17Message6D)
    db LOW(Text17Message6E), HIGH(Text17Message6E)
    db LOW(Text17Message6F), HIGH(Text17Message6F)
    db LOW(Text17Message70), HIGH(Text17Message70)
    db LOW(Text17Message71), HIGH(Text17Message71)
    db LOW(Text17Message72), HIGH(Text17Message72)
    db LOW(Text17Message73), HIGH(Text17Message73)
    db LOW(Text17Message74), HIGH(Text17Message74)
    db LOW(Text17Message75), HIGH(Text17Message75)
    db LOW(Text17Message76), HIGH(Text17Message76)
    db LOW(Text17Message77), HIGH(Text17Message77)
    db LOW(Text17Message78), HIGH(Text17Message78)
    db LOW(Text17Message79), HIGH(Text17Message79)
    db LOW(Text17Message7A), HIGH(Text17Message7A)
    db LOW(Text17Message7B), HIGH(Text17Message7B)
    db LOW(Text17Message7C), HIGH(Text17Message7C)
    db LOW(Text17Message7D), HIGH(Text17Message7D)
    db LOW(Text17Message7E), HIGH(Text17Message7E)
    db LOW(Text17Message7F), HIGH(Text17Message7F)
; ラスべガスえきの / てにもつあずかりしょうだ。 / 「526」と かいてある。[END]
Text17Message00:
    INCBIN "../../res/text/JP/banks/17.bin", $100, $25
; 「トーマス・ボンドウェル」と / かかれた かみが はりつけられているはこだ。[END]
Text17Message01:
    INCBIN "../../res/text/JP/banks/17.bin", $125, $5
jr_017_412a:
    INCBIN "../../res/text/JP/banks/17.bin", $12a, $2
jr_017_412c:
    INCBIN "../../res/text/JP/banks/17.bin", $12c, $1f
; じょうしつの かわせいの さいふだ。「T・B」と イニシャルが / はいっている。[END]
Text17Message02:
    INCBIN "../../res/text/JP/banks/17.bin", $14b, $28
; ・・・あかない。 / ひよけは こわれているようだ。[PAGE] / うんちんが やすいから しゅうりひがはらえないのだろうな・・・。[END]
Text17Message03:
    INCBIN "../../res/text/JP/banks/17.bin", $173, $3a
; したいが ほぞんされている へやの / ドアだろう。[END]
Text17Message04:
    INCBIN "../../res/text/JP/banks/17.bin", $1ad, $19
; したいが ほぞんされている へやの / ドアだ。[END]
Text17Message05:
    INCBIN "../../res/text/JP/banks/17.bin", $1c6, $17
; じむいんが いるので あけられない。[END]
Text17Message06:
    INCBIN "../../res/text/JP/banks/17.bin", $1dd, $13
; おれが もんを あけようとすると / じむいんが いった。[END]
Text17Message07:
    INCBIN "../../res/text/JP/banks/17.bin", $1f0, $1c
; 「いっぱんしみんは はいれないよ。 /  しんだ ひとは べつだが・・・。」[END]
Text17Message08:
    INCBIN "../../res/text/JP/banks/17.bin", $20c, $25
; 「ぶがいしゃは はいれないって /  いっただろう![PAGE] /  ここに いきたまま はいれるのは /  じむいんか けいかん ぐらいさ。」[END]
Text17Message09:
    INCBIN "../../res/text/JP/banks/17.bin", $231, $30
jr_017_4261:
    INCBIN "../../res/text/JP/banks/17.bin", $261, $e
; ナイフの はを だした。[END]
Text17Message0A:
    INCBIN "../../res/text/JP/banks/17.bin", $26f, $d
; れっしゃは ゆっくりと ホームを / はなれた。[PAGE] / そして だんだんと スピードを / あげていく・・・。[END]
Text17Message0B:
    INCBIN "../../res/text/JP/banks/17.bin", $27c, $1a
jr_017_4296:
    INCBIN "../../res/text/JP/banks/17.bin", $296, $17
; じむいんは いっぱつ くらって / グラッとした。[PAGE] / しかし とっさに ひじょうべルを / おしたようだ。[END]
Text17Message0C:
    INCBIN "../../res/text/JP/banks/17.bin", $2ad, $31
; ああ・・・なんて ここちよく / ゆれるんだ・・・。 / なんだか ねむくなった・・・。[END]
Text17Message0D:
    INCBIN "../../res/text/JP/banks/17.bin", $2de, $29
; ぶさほうな こういに おどろいて / じむいんは ひじょうべルを おして / けいかんを よんだ。[END]
Text17Message0E:
    INCBIN "../../res/text/JP/banks/17.bin", $307, $2e
; ねぼけまなこで れっしゃのなかを / みまわして おだやかな / ねむりについた・・・。[END]
Text17Message0F:
    INCBIN "../../res/text/JP/banks/17.bin", $335, $29
; じむいんは めんきょしょうを みて / おれの しょくぎょうを たずねた。[PAGE] / おれが なんのために きたのか / わからないらしい。[END]
Text17Message10:
    INCBIN "../../res/text/JP/banks/17.bin", $35e, $3e
; 「しりつたんていね・・・。 /  ざんねんだが ここには じむいんか けいかんしか はいれないんだ。」[END]
Text17Message11:
    INCBIN "../../res/text/JP/banks/17.bin", $39c, $32
; じむいんは めんきょしょうを / もどしながら いった。[PAGE] / 「そんな なまえの いたいは /  ないよ。」[END]
Text17Message12:
    INCBIN "../../res/text/JP/banks/17.bin", $3ce, $31
; じむいんは めんどうくさそうに / いった。[END]
Text17Message13:
    INCBIN "../../res/text/JP/banks/17.bin", $3ff, $15
; 「ピエールさんの もちものは /  ありませんよ!」[END]
Text17Message14:
    INCBIN "../../res/text/JP/banks/17.bin", $414, $19
; めざめたときには もう たびの / おわりに ちかづいていた。[PAGE] / おれは みじたくを ととのえ / れっしゃを おりる じゅんびをした。[END]
Text17Message15:
    INCBIN "../../res/text/JP/banks/17.bin", $42d, $40
; おれが あいさつすると じむいんは / いった。[PAGE] / 「なんのようですか? /  なにも ようが なければ /  かえってくださいよ!」[PAGE] / ・・・どうも むしの いどころが / わるいようだ。...
Text17Message16:
    INCBIN "../../res/text/JP/banks/17.bin", $46d, $54
Jump_017_44c1:
    INCBIN "../../res/text/JP/banks/17.bin", $4c1, $2
; 「いたいの もちものを みたければ /  いたいの あしに ついている /  なふだを もってきてください。」[END]
Text17Message17:
    INCBIN "../../res/text/JP/banks/17.bin", $4c3, $34
; じむいんは ぶきみに わらいながら / いった。[PAGE] / 「くわしくは しらないのですが /  ボンドウェルさんの いたいは /  シカゴがわの かわぞこで /  はっけんされたのです。[PAGE] /  コン...
Text17Message18:
    INCBIN "../../res/text/JP/banks/17.bin", $4f7, $71
; このへやは さむいだけでなく / くさった にくの においもする。[END]
Text17Message19:
    INCBIN "../../res/text/JP/banks/17.bin", $568, $20
; さつじんの つみで おれを / まっていたのは でんきイスだった。[PAGE] / でんきイスに しばりつけられて / おれは ばくぜんと かんがえていた。[PAGE] / いまから でんきショックを / うけるのか・...
Text17Message1A:
    INCBIN "../../res/text/JP/banks/17.bin", $588, $85
; ほぞんじょうたいの よい / いたいだ。[PAGE] / おおきな きずは みあたらないが / この いたいに なにが / おこったのだろうか。[END]
Text17Message1B:
    INCBIN "../../res/text/JP/banks/17.bin", $60d, $3b
; だれかが この おとこを まとにしてしゃげきの れんしゅうを / したようだ。[PAGE] / ひだりめに きずが ある。 / こんな しにかたを するなんて / マフィアだったのかな・・・?[END]
Text17Message1C:
    INCBIN "../../res/text/JP/banks/17.bin", $648, $53
; ・・・ひだりめの きず?[PAGE] / カールストンけいぶに かねを / わたしていたのは この おとこ / だったのか・・・。[END]
Text17Message1D:
    INCBIN "../../res/text/JP/banks/17.bin", $69b, $36
; いたいを ほかんするための / ひきだしだ。[END]
Text17Message1E:
    INCBIN "../../res/text/JP/banks/17.bin", $6d1, $15
; ・・・やつらに みつかってしまった。[PAGE] / 「ここに いるぞ スパイク! /  みつけたぞ!」[PAGE] / 「また にがしては たいへんだ! /  はやいとこ ころしちまおうぜ!」[PAGE] / あっと...
Text17Message1F:
    INCBIN "../../res/text/JP/banks/17.bin", $6e6, $71
; ひきだしを みただけで とりはだが / たってくる。[END]
Text17Message20:
    INCBIN "../../res/text/JP/banks/17.bin", $757, $19
; 「ドアが あいている ということは /  やつは にげたんだ![PAGE] /  ・・・あにきの きげんが /  わるくなるかな?[PAGE] /  とにかく あにきに しらせたほうが いいな。」[PAGE] / やつ...
Text17Message21:
    INCBIN "../../res/text/JP/banks/17.bin", $770, $7e
; 「あけた ひきだしは しめるように」と かいてある。[END]
Text17Message22:
    INCBIN "../../res/text/JP/banks/17.bin", $7ee, $1b
; あしふだには 「ピエール・マローカ」と かいてある。[END]
Text17Message23:
    INCBIN "../../res/text/JP/banks/17.bin", $809, $f
jr_017_4818:
    INCBIN "../../res/text/JP/banks/17.bin", $818, $c
; 「トーマス・ボンドウェル」と / あしふだに かいてある。[END]
Text17Message24:
    INCBIN "../../res/text/JP/banks/17.bin", $824, $1c
; むこうは したいおきばの / うけつけだ。[END]
Text17Message25:
    INCBIN "../../res/text/JP/banks/17.bin", $840, $14
; ふたりの おとこが おれの / ボディーチェックを はじめた。[END]
Text17Message26:
    INCBIN "../../res/text/JP/banks/17.bin", $854, $1e
; せんたくものいれの なかにいる。[PAGE] / ぐうわあああっ・・・! / すごい においだ![END]
Text17Message27:
    INCBIN "../../res/text/JP/banks/17.bin", $872, $27
; とつぜん ふたが しまった。[END]
Text17Message28:
    INCBIN "../../res/text/JP/banks/17.bin", $899, $f
; おれが はいっているのに きづかず / だれかが せんたくものいれを / うごかしはじめた。[PAGE] / トラックに のせられたようだ。 / しばらく ドライブを たのしむことにしよう・・・。[PAGE] / しば...
Text17Message29:
    INCBIN "../../res/text/JP/banks/17.bin", $8a8, $8e
; ・・・うっ! / まぶしい!![PAGE] / まわりを みようとして めを / ほそめてみると ふたりの おとこが / おれを じっと みていた![END]
Text17Message2A:
    INCBIN "../../res/text/JP/banks/17.bin", $936, $3d
; そのうち おれを いかしておいても / まったく いみが ないと / おもったのだろう・・・。[PAGE] / ふたりは はなしを はじめた。[PAGE] / 「こいつが じゅうような じんぶつか どうかを しめすもの...
Text17Message2B:
    INCBIN "../../res/text/JP/banks/17.bin", $973, $96
; そのうち ふたりは シーゲルが / 「D・Y」という イニシャルの / おとこと あくしゅしている / しゃしんを みつけた。[PAGE] / 「おい ムース! /  これは べンティーニあにきの /  しゃしんだ!」...
Text17Message2C:
    INCBIN "../../res/text/JP/banks/17.bin", $a09, $109
; そのうち ふたりは ボンドウェルの / てがみを みつけた。[PAGE] / 「おい みろよ ムース! /  ボスあての てがみだぜ。」[PAGE] / 「・・・そのようだな スパイク。 /  こんなものを もっている...
Text17Message2D:
    INCBIN "../../res/text/JP/banks/17.bin", $b12, $fd
jr_017_4c0f:
    INCBIN "../../res/text/JP/banks/17.bin", $c0f, $5
; うすぐらい せんたくしつだ。 / せんざいの きょうれつな においが / する。[END]
Text17Message2E:
    INCBIN "../../res/text/JP/banks/17.bin", $c14, $25
; うえの かいから よごれものを / おとすための シュートだろう。[END]
Text17Message2F:
    INCBIN "../../res/text/JP/banks/17.bin", $c39, $20
; ウロウロするまえに なにか / するんだったな。[END]
Text17Message30:
    INCBIN "../../res/text/JP/banks/17.bin", $c59, $17
; ロープで しばられてしまった。 / やつらが もどってくるまえに / なんとかしなければ![END]
Text17Message31:
    INCBIN "../../res/text/JP/banks/17.bin", $c70, $2a
; ふたりの おとこに りょうてを / しばられてしまった。[END]
Text17Message32:
    INCBIN "../../res/text/JP/banks/17.bin", $c9a, $1b
; きの かごだ。 / なにが はいっていたのだろうか?[PAGE] / まがった クギが たくさん / つきささっている。 / あぶないな・・・。[END]
Text17Message33:
    INCBIN "../../res/text/JP/banks/17.bin", $cb5, $3b
; そうだ! / いいことを おもいついた![PAGE] / この かごを つかえば ロープが / きれるかも しれないぞ![END]
Text17Message34:
    INCBIN "../../res/text/JP/banks/17.bin", $cf0, $31
; きの かごだ。 / これの おかげで ロープを / きることが できた。[END]
Text17Message35:
    INCBIN "../../res/text/JP/banks/17.bin", $d21, $21
; 「おい スパイク。 /  やつが いなくなっているぜ!」[END]
Text17Message36:
    INCBIN "../../res/text/JP/banks/17.bin", $d42, $1b
; 「でも そとに にげたようすは /  ないな・・・。[PAGE] /  どこか そのへんに かくれて /  いるんじゃないか?」[END]
Text17Message37:
    INCBIN "../../res/text/JP/banks/17.bin", $d5d, $35
; ぎょうむようの せんたくきだ。[END]
Text17Message38:
    INCBIN "../../res/text/JP/banks/17.bin", $d92, $10
; せんたくを するための せんざいだ。とくべつな せんざいなのだろうか?[END]
Text17Message39:
    INCBIN "../../res/text/JP/banks/17.bin", $da2, $24
; 「ぎょうむよう せんざい」と / かいてある はこだ。[END]
Text17Message3A:
    INCBIN "../../res/text/JP/banks/17.bin", $dc6, $1a
; せんたくものいれだ。 / これだと いくらでも はいるな。[END]
Text17Message3B:
    INCBIN "../../res/text/JP/banks/17.bin", $de0, $1c
; このあたりを ウロウロしていると / すぐ あいつらに みつかってしまう / だろう。[PAGE] / でも このクリーニングてんの / おとこと シーゲルに なんらかの / つながりが あったのは たしかだ。[PAG...
Text17Message3C:
    INCBIN "../../res/text/JP/banks/17.bin", $dfc, $17
jr_017_4e13:
    INCBIN "../../res/text/JP/banks/17.bin", $e13, $73
jr_017_4e86:
    INCBIN "../../res/text/JP/banks/17.bin", $e86, $9
jr_017_4e8f:
    INCBIN "../../res/text/JP/banks/17.bin", $e8f, $38
; ここから にげたように みせかけて / この せんたくものいれの なかに / かくれていれば やつらを / ごまかせるかも しれない![END]
Text17Message3D:
    INCBIN "../../res/text/JP/banks/17.bin", $ec7, $3e
; そんなことは できない。 / ロープで しばられている。[END]
Text17Message3E:
    INCBIN "../../res/text/JP/banks/17.bin", $f05, $1b
; クギが でているところに ロープを / おしあてて ぜんごに ちからいっぱいうごかした。[END]
Text17Message3F:
    INCBIN "../../res/text/JP/banks/17.bin", $f20, $2b
; やった! / ロープが きれた。 / じゆうに なったぞ![PAGE] / でも・・・このままでは やつらに / ころされてしまうだろう。[PAGE] / やつらを ごまかせる ほうほうは / ないだろうか・・・?[END]
Text17Message40:
    INCBIN "../../res/text/JP/banks/17.bin", $f4b, $54
; あっ! / あしおとが きこえる! / やつらが もどってきたんだ![END]
Text17Message41:
    INCBIN "../../res/text/JP/banks/17.bin", $f9f, $1f
; 「あにきは おまえのことなんか /  しらないって いってるぜ。」[PAGE] / そして ピストルを とりだしてから / おれに いった。 / 「なにか いいのこしたいことは /  あるか?」[END]
Text17Message42:
    INCBIN "../../res/text/JP/banks/17.bin", $fbe, $52
; おれが ゆいごんを のこすまえに / やつらは おれの しんぞうを / ぶちぬいた。[END]
Text17Message43:
    INCBIN "../../res/text/JP/banks/17.bin", $1010, $27
; ロープが きれたらなあ。[END]
Text17Message44:
    INCBIN "../../res/text/JP/banks/17.bin", $1037, $d
; おれが ウロウロしているところを / やつらに みつかってしまった。[END]
Text17Message45:
    INCBIN "../../res/text/JP/banks/17.bin", $1044, $21
; せんざいを せんたくきの なかに / いれた。[END]
Text17Message46:
    INCBIN "../../res/text/JP/banks/17.bin", $1065, $16
; ぬがなければ いれられない。[END]
Text17Message47:
    INCBIN "../../res/text/JP/banks/17.bin", $107b, $f
; つまみを いじってみたが まったく / うごかない。[PAGE] / せんたくなんて いちども / やったことがないからな・・・。[END]
Text17Message48:
    INCBIN "../../res/text/JP/banks/17.bin", $108a, $36
; おれを いそいで ほうりだしたとき / ふたが こわれたようだ。 / しまらなくなっている。[END]
Text17Message49:
    INCBIN "../../res/text/JP/banks/17.bin", $10c0, $2b
; シュートは すべるので のぼれない。[END]
Text17Message4A:
    INCBIN "../../res/text/JP/banks/17.bin", $10eb, $13
; 「にげようとしていたのか? /  まあ みつけてしまえば そんなこと かんけいないがね。[END]
Text17Message4B:
    INCBIN "../../res/text/JP/banks/17.bin", $10fe, $2b
;  あにきは どうして あの てがみを おまえが もっていたのか /  わからないし おまえのことなど /  きいたこともないと いっていた。[PAGE] /  おまえを ころしても かまわない /  ということだ。[P...
Text17Message4C:
    INCBIN "../../res/text/JP/banks/17.bin", $1129, $67
jr_017_5190:
    INCBIN "../../res/text/JP/banks/17.bin", $1190, $e
; 「リライアント・クリーニングてん」のろうかだ。[END]
Text17Message4D:
    INCBIN "../../res/text/JP/banks/17.bin", $119e, $18
; マドから とおりが みえる。 / だれも いない・・・。[END]
Text17Message4E:
    INCBIN "../../res/text/JP/banks/17.bin", $11b6, $1a
jr_017_51d0:
    INCBIN "../../res/text/JP/banks/17.bin", $11d0, $1
; クリーニングりょうきんの / いちらんひょうだ。 / なにか クリーニングに だそうかな?[END]
Text17Message4F:
    INCBIN "../../res/text/JP/banks/17.bin", $11d1, $8
jr_017_51d9:
    INCBIN "../../res/text/JP/banks/17.bin", $11d9, $22
; カウンターだ。 / てんいんは いない・・・。[END]
Text17Message50:
    INCBIN "../../res/text/JP/banks/17.bin", $11fb, $16
; しゃしょうが あらわれて いった。[END]
Text17Message51:
    INCBIN "../../res/text/JP/banks/17.bin", $1211, $12
; ・・・そうだ![PAGE] / このドアを あけておけば やつらは / おれが にげたと おもうに / ちがいない。[END]
Text17Message52:
    INCBIN "../../res/text/JP/banks/17.bin", $1223, $2f
; せんたくしつへ おりる かいだんが / ある。[END]
Text17Message53:
    INCBIN "../../res/text/JP/banks/17.bin", $1252, $16
; ドアには 「オフィス」と / かいてある。[END]
Text17Message54:
    INCBIN "../../res/text/JP/banks/17.bin", $1268, $14
; カウンターを あげた。[END]
Text17Message55:
    INCBIN "../../res/text/JP/banks/17.bin", $127c, $c
; カウンターを おろした。[END]
Text17Message56:
    INCBIN "../../res/text/JP/banks/17.bin", $1288, $d
; ひろい オフィスだ。[END]
Text17Message57:
    INCBIN "../../res/text/JP/banks/17.bin", $1295, $b
; ダーツボードだ。 / まわりは かべを きずつけないようにコルクの パネルに なっている。[PAGE] / これだと しっぱいして / ダーツボードに あたらなくても / ダーツの さきが おれまがる / しんぱいは ...
Text17Message58:
    INCBIN "../../res/text/JP/banks/17.bin", $12a0, $61
; でも どうして オフィスの なかに / ダーツボードが あるんだろう。 / おかしいな・・・。[END]
Text17Message59:
    INCBIN "../../res/text/JP/banks/17.bin", $1301, $2c
; ひんのいい カーテンだ。[END]
Text17Message5A:
    INCBIN "../../res/text/JP/banks/17.bin", $132d, $d
; あたたかい ひざしが / さしこんでくる。[END]
Text17Message5B:
    INCBIN "../../res/text/JP/banks/17.bin", $133a, $14
; かわで できた イスだ。[END]
Text17Message5C:
    INCBIN "../../res/text/JP/banks/17.bin", $134e, $d
; マホガニーの きで つくられた / つくえだ。 / つやが あるな。[END]
Text17Message5D:
    INCBIN "../../res/text/JP/banks/17.bin", $135b, $12
jr_017_536d:
    INCBIN "../../res/text/JP/banks/17.bin", $136d, $d
; しるしのない カギだ。 / どこの カギだろう?[END]
Text17Message5E:
    INCBIN "../../res/text/JP/banks/17.bin", $137a, $17
; グレーの まるい じしゃくだ。 / ちょうど ビンのふた ていどの / おおきさだな。[PAGE] / なにかの ボタンのようだが・・・? / ・・・どこかで おなじボタンを / みたような きがするが・・・?[END]
Text17Message5F:
    INCBIN "../../res/text/JP/banks/17.bin", $1391, $5a
; あくめいだかい アンソニー・マロンのしゃしんだ。[PAGE] / マロンは シーゲルと いっしょに / うつっていた あの おとこと / あくしゅしている![PAGE] / しゃしんには サインが ある。[PAGE] ...
Text17Message60:
    INCBIN "../../res/text/JP/banks/17.bin", $13eb, $89
; ドアが しまる ちょくぜんに / ストージー・マーチンが れっしゃに / とびのってきた![END]
Text17Message61:
    INCBIN "../../res/text/JP/banks/17.bin", $1474, $2a
; 「この れっしゃは ボスのいる /  ラスべガスいきでも おまえの /  いえがある シカゴいきでもない。[PAGE] /  ・・・と いうことは おまえ /  にげるつもりだな![PAGE] /  ボスが いったはず...
Text17Message62:
    INCBIN "../../res/text/JP/banks/17.bin", $149e, $b3
; ひみつの へやへの いりぐちだ。[END]
Text17Message63:
    INCBIN "../../res/text/JP/banks/17.bin", $1551, $11
; ・・・コン コン![PAGE] / コルクの パネルを たたいてみた。 / ・・・ん・・・?[PAGE] / なかが くうどうに なっているぞ! / なにか しかけがあるに ちがいない。[END]
Text17Message64:
    INCBIN "../../res/text/JP/banks/17.bin", $1562, $4a
; おとこは ねむっているので / はんのうがない。[END]
Text17Message65:
    INCBIN "../../res/text/JP/banks/17.bin", $15ac, $17
; ねらいを さだめて ハチドリを / なげた。[END]
Text17Message66:
    INCBIN "../../res/text/JP/banks/17.bin", $15c3, $15
; ・・・ん・・・? / やったー![END]
Text17Message67:
    INCBIN "../../res/text/JP/banks/17.bin", $15d8, $f
; ハチドリが まとを いると / ギーッという おとと ともに かべがスライドして ひみつの いりぐちが / あらわれた![END]
Text17Message68:
    INCBIN "../../res/text/JP/banks/17.bin", $15e7, $39
; ・・・ギーッ![END]
Text17Message69:
    INCBIN "../../res/text/JP/banks/17.bin", $1620, $8
; おみごと! / おれの うでは たしかだ。[END]
Text17Message6A:
    INCBIN "../../res/text/JP/banks/17.bin", $1628, $14
; 0ばんの しはらいには なにか / とくべつな いみが あるのだろうか?[END]
Text17Message6B:
    INCBIN "../../res/text/JP/banks/17.bin", $163c, $23
; どうして ハチドリで じぶんを / つつかなければならないんだ?[END]
Text17Message6C:
    INCBIN "../../res/text/JP/banks/17.bin", $165f, $1f
; バナナの かわを むいた。[END]
Text17Message6D:
    INCBIN "../../res/text/JP/banks/17.bin", $167e, $e
; ゆかに バナナのかわを おいておけばころぶ ひとが いるかな・・・。[END]
Text17Message6E:
    INCBIN "../../res/text/JP/banks/17.bin", $168c, $23
; くろくて おおきな / とりひききろくちょうだ。[END]
Text17Message6F:
    INCBIN "../../res/text/JP/banks/17.bin", $16af, $17
; ということは・・・これが ほんもののとりひききろくちょうだろう。[PAGE] / にせものの きろくちょうを つくってホテルの じぶんの へやに / おいていたのは マロンを / ごまかすために ちがいない。[END]
Text17Message70:
    INCBIN "../../res/text/JP/banks/17.bin", $16c6, $5d
; べンティーニは シーゲルの しごとをすべて はあくしていたようだ。[END]
Text17Message71:
    INCBIN "../../res/text/JP/banks/17.bin", $1723, $22
; とつぜん せんたくものいれから / そとに ほうりだされた。[PAGE] / 「ここに いたのか モグラやろう![END]
Text17Message72:
    INCBIN "../../res/text/JP/banks/17.bin", $1745, $1
jr_017_5746:
    INCBIN "../../res/text/JP/banks/17.bin", $1746, $2e
; しはらいきろくが かかれている。[PAGE] / でも・・・おおくの しはらいが / かかれていて よくわからない![PAGE] / なにか めやすになるものが あれば / いいんだが・・・。[END]
Text17Message73:
    INCBIN "../../res/text/JP/banks/17.bin", $1774, $4d
; ダーツボードの へやへの / いりぐちだ。[END]
Text17Message74:
    INCBIN "../../res/text/JP/banks/17.bin", $17c1, $14
; かみきれに かいてある もじが / なんとか よめる。[PAGE] / シカゴを きばんにしている / かいしゃの リストの ようだ。[PAGE] / かいしゃめいの となりに それぞれ / 「じゅり」 または 「まだ...
Text17Message75:
    INCBIN "../../res/text/JP/banks/17.bin", $17d5, $b8
; うれすぎの バナナだ。[END]
Text17Message76:
    INCBIN "../../res/text/JP/banks/17.bin", $188d, $c
; バナナが フニャフニャに / なっている。[END]
Text17Message77:
    INCBIN "../../res/text/JP/banks/17.bin", $1899, $14
; ひみつの へやだ![PAGE] / べンティーニは ここで あたらしい / しごとの けいかくを ねっているに / ちがいない。[END]
Text17Message78:
    INCBIN "../../res/text/JP/banks/17.bin", $18ad, $35
; ひみつの へやだ。[END]
Text17Message79:
    INCBIN "../../res/text/JP/banks/17.bin", $18e2, $a
; かわで できた かいてんイスだ。[END]
Text17Message7A:
    INCBIN "../../res/text/JP/banks/17.bin", $18ec, $11
; あたらしい デスクマットだ。[END]
Text17Message7B:
    INCBIN "../../res/text/JP/banks/17.bin", $18fd, $f
; とうを あみこんで つくった / ゴミばこだ。[END]
Text17Message7C:
    INCBIN "../../res/text/JP/banks/17.bin", $190c, $2
jr_017_590e:
    INCBIN "../../res/text/JP/banks/17.bin", $190e, $14
; かしのきで つくられた つくえだ。[END]
Text17Message7D:
    INCBIN "../../res/text/JP/banks/17.bin", $1922, $12
; この つくえの うえに ストージーのトレードマークといえる はまきの / シガーリングを おいておけば・・・[PAGE] / べンティーニは けいかくが マロンにしれたと おもうだろう。[END]
Text17Message7E:
    INCBIN "../../res/text/JP/banks/17.bin", $1934, $54
; あずかりしょうを さしだすと / おとこは はんしゃてきに めをさましカウンターから おおきな / スーツケースを だした。[PAGE] / そして ふたたび ねむってしまった。[END]
Text17Message7F:
    INCBIN "../../res/text/JP/banks/17.bin", $1988, $755
Jump_017_60dd:
    INCBIN "../../res/text/JP/banks/17.bin", $20dd, $1e86
Call_017_7f63:
    INCBIN "../../res/text/JP/banks/17.bin", $3f63, $86
Call_017_7fe9:
Jump_017_7fe9:
    INCBIN "../../res/text/JP/banks/17.bin", $3fe9, $1
Call_017_7fea:
    INCBIN "../../res/text/JP/banks/17.bin", $3fea, $16
