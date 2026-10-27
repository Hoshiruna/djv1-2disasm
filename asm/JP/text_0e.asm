; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text0EMsgs0:
    db LOW(Text0EMessage00), HIGH(Text0EMessage00)
    db LOW(Text0EMessage01), HIGH(Text0EMessage01)
    db LOW(Text0EMessage02), HIGH(Text0EMessage02)
    db LOW(Text0EMessage03), HIGH(Text0EMessage03)
    db LOW(Text0EMessage04), HIGH(Text0EMessage04)
    db LOW(Text0EMessage05), HIGH(Text0EMessage05)
    db LOW(Text0EMessage06), HIGH(Text0EMessage06)
    db LOW(Text0EMessage07), HIGH(Text0EMessage07)
    db LOW(Text0EMessage08), HIGH(Text0EMessage08)
    db LOW(Text0EMessage09), HIGH(Text0EMessage09)
    db LOW(Text0EMessage0A), HIGH(Text0EMessage0A)
    db LOW(Text0EMessage0B), HIGH(Text0EMessage0B)
    db LOW(Text0EMessage0C), HIGH(Text0EMessage0C)
    db LOW(Text0EMessage0D), HIGH(Text0EMessage0D)
    db LOW(Text0EMessage0E), HIGH(Text0EMessage0E)
    db LOW(Text0EMessage0F), HIGH(Text0EMessage0F)
    db LOW(Text0EMessage10), HIGH(Text0EMessage10)
    db LOW(Text0EMessage11), HIGH(Text0EMessage11)
    db LOW(Text0EMessage12), HIGH(Text0EMessage12)
    db LOW(Text0EMessage13), HIGH(Text0EMessage13)
    db LOW(Text0EMessage14), HIGH(Text0EMessage14)
    db LOW(Text0EMessage15), HIGH(Text0EMessage15)
    db LOW(Text0EMessage16), HIGH(Text0EMessage16)
    db LOW(Text0EMessage17), HIGH(Text0EMessage17)
    db LOW(Text0EMessage18), HIGH(Text0EMessage18)
    db LOW(Text0EMessage19), HIGH(Text0EMessage19)
    db LOW(Text0EMessage1A), HIGH(Text0EMessage1A)
    db LOW(Text0EMessage1B), HIGH(Text0EMessage1B)
    db LOW(Text0EMessage1C), HIGH(Text0EMessage1C)
    db LOW(Text0EMessage1D), HIGH(Text0EMessage1D)
    db LOW(Text0EMessage1E), HIGH(Text0EMessage1E)
    db LOW(Text0EMessage1F), HIGH(Text0EMessage1F)
    db LOW(Text0EMessage20), HIGH(Text0EMessage20)
    db LOW(Text0EMessage21), HIGH(Text0EMessage21)
    db LOW(Text0EMessage22)
jr_00e_4045:
    db HIGH(Text0EMessage22)
    db LOW(Text0EMessage23), HIGH(Text0EMessage23)
    db LOW(Text0EMessage24), HIGH(Text0EMessage24)
    db LOW(Text0EMessage25), HIGH(Text0EMessage25)
    db LOW(Text0EMessage26), HIGH(Text0EMessage26)
    db LOW(Text0EMessage27), HIGH(Text0EMessage27)
    db LOW(Text0EMessage28), HIGH(Text0EMessage28)
    db LOW(Text0EMessage29), HIGH(Text0EMessage29)
    db LOW(Text0EMessage2A), HIGH(Text0EMessage2A)
    db LOW(Text0EMessage2B), HIGH(Text0EMessage2B)
    db LOW(Text0EMessage2C), HIGH(Text0EMessage2C)
    db LOW(Text0EMessage2D), HIGH(Text0EMessage2D)
    db LOW(Text0EMessage2E), HIGH(Text0EMessage2E)
    db LOW(Text0EMessage2F), HIGH(Text0EMessage2F)
    db LOW(Text0EMessage30), HIGH(Text0EMessage30)
    db LOW(Text0EMessage31), HIGH(Text0EMessage31)
    db LOW(Text0EMessage32), HIGH(Text0EMessage32)
    db LOW(Text0EMessage33), HIGH(Text0EMessage33)
    db LOW(Text0EMessage34), HIGH(Text0EMessage34)
    db LOW(Text0EMessage35), HIGH(Text0EMessage35)
    db LOW(Text0EMessage36), HIGH(Text0EMessage36)
    db LOW(Text0EMessage37), HIGH(Text0EMessage37)
    db LOW(Text0EMessage38), HIGH(Text0EMessage38)
    db LOW(Text0EMessage39), HIGH(Text0EMessage39)
    db LOW(Text0EMessage3A), HIGH(Text0EMessage3A)
    db LOW(Text0EMessage3B), HIGH(Text0EMessage3B)
    db LOW(Text0EMessage3C), HIGH(Text0EMessage3C)
    db LOW(Text0EMessage3D), HIGH(Text0EMessage3D)
    db LOW(Text0EMessage3E), HIGH(Text0EMessage3E)
    db LOW(Text0EMessage3F), HIGH(Text0EMessage3F)
; Sixty-four message pointers for one text group.
Text0EMsgs1:
    db LOW(Text0EMessage40), HIGH(Text0EMessage40)
    db LOW(Text0EMessage41), HIGH(Text0EMessage41)
    db LOW(Text0EMessage42), HIGH(Text0EMessage42)
    db LOW(Text0EMessage43), HIGH(Text0EMessage43)
    db LOW(Text0EMessage44), HIGH(Text0EMessage44)
    db LOW(Text0EMessage45), HIGH(Text0EMessage45)
    db LOW(Text0EMessage46), HIGH(Text0EMessage46)
    db LOW(Text0EMessage47), HIGH(Text0EMessage47)
    db LOW(Text0EMessage48), HIGH(Text0EMessage48)
    db LOW(Text0EMessage49), HIGH(Text0EMessage49)
    db LOW(Text0EMessage4A), HIGH(Text0EMessage4A)
    db LOW(Text0EMessage4B), HIGH(Text0EMessage4B)
    db LOW(Text0EMessage4C), HIGH(Text0EMessage4C)
    db LOW(Text0EMessage4D), HIGH(Text0EMessage4D)
    db LOW(Text0EMessage4E), HIGH(Text0EMessage4E)
    db LOW(Text0EMessage4F), HIGH(Text0EMessage4F)
    db LOW(Text0EMessage50), HIGH(Text0EMessage50)
    db LOW(Text0EMessage51), HIGH(Text0EMessage51)
    db LOW(Text0EMessage52), HIGH(Text0EMessage52)
    db LOW(Text0EMessage53), HIGH(Text0EMessage53)
    db LOW(Text0EMessage54), HIGH(Text0EMessage54)
    db LOW(Text0EMessage55), HIGH(Text0EMessage55)
    db LOW(Text0EMessage56), HIGH(Text0EMessage56)
    db LOW(Text0EMessage57), HIGH(Text0EMessage57)
    db LOW(Text0EMessage58), HIGH(Text0EMessage58)
    db LOW(Text0EMessage59), HIGH(Text0EMessage59)
    db LOW(Text0EMessage5A), HIGH(Text0EMessage5A)
    db LOW(Text0EMessage5B), HIGH(Text0EMessage5B)
    db LOW(Text0EMessage5C), HIGH(Text0EMessage5C)
    db LOW(Text0EMessage5D), HIGH(Text0EMessage5D)
    db LOW(Text0EMessage5E), HIGH(Text0EMessage5E)
    db LOW(Text0EMessage5F), HIGH(Text0EMessage5F)
    db LOW(Text0EMessage60), HIGH(Text0EMessage60)
    db LOW(Text0EMessage61), HIGH(Text0EMessage61)
    db LOW(Text0EMessage62), HIGH(Text0EMessage62)
jr_00e_40c6:
    db LOW(Text0EMessage63), HIGH(Text0EMessage63)
    db LOW(Text0EMessage64), HIGH(Text0EMessage64)
    db LOW(Text0EMessage65), HIGH(Text0EMessage65)
    db LOW(Text0EMessage66), HIGH(Text0EMessage66)
    db LOW(Text0EMessage67), HIGH(Text0EMessage67)
    db LOW(Text0EMessage68), HIGH(Text0EMessage68)
    db LOW(Text0EMessage69), HIGH(Text0EMessage69)
    db LOW(Text0EMessage6A), HIGH(Text0EMessage6A)
    db LOW(Text0EMessage6B), HIGH(Text0EMessage6B)
    db LOW(Text0EMessage6C), HIGH(Text0EMessage6C)
    db LOW(Text0EMessage6D), HIGH(Text0EMessage6D)
    db LOW(Text0EMessage6E), HIGH(Text0EMessage6E)
    db LOW(Text0EMessage6F), HIGH(Text0EMessage6F)
    db LOW(Text0EMessage70), HIGH(Text0EMessage70)
    db LOW(Text0EMessage71), HIGH(Text0EMessage71)
    db LOW(Text0EMessage72), HIGH(Text0EMessage72)
    db LOW(Text0EMessage73), HIGH(Text0EMessage73)
    db LOW(Text0EMessage74), HIGH(Text0EMessage74)
    db LOW(Text0EMessage75), HIGH(Text0EMessage75)
    db LOW(Text0EMessage76), HIGH(Text0EMessage76)
    db LOW(Text0EMessage77), HIGH(Text0EMessage77)
    db LOW(Text0EMessage78), HIGH(Text0EMessage78)
    db LOW(Text0EMessage79), HIGH(Text0EMessage79)
    db LOW(Text0EMessage7A), HIGH(Text0EMessage7A)
    db LOW(Text0EMessage7B), HIGH(Text0EMessage7B)
    db LOW(Text0EMessage7C), HIGH(Text0EMessage7C)
    db LOW(Text0EMessage7D), HIGH(Text0EMessage7D)
    db LOW(Text0EMessage7E), HIGH(Text0EMessage7E)
    db LOW(Text0EMessage7F), HIGH(Text0EMessage7F)
; べンツの なかだ。 / これといって かわったことは / ないようだ。[END]
Text0EMessage00:
    INCBIN "../../res/text/JP/banks/0e.bin", $100, $20
; アクセルだ。 / おもいっきり ふみこんだら / きぶんが いいだろうなあ・・・。[END]
Text0EMessage01:
    INCBIN "../../res/text/JP/banks/0e.bin", $120, $26
; そのとき とつぜん ゴーッという / おとがした。[PAGE] / ふりむくと いま のってきた / エレべータが きえている! / なにが おこったんだ?[PAGE] / ・・・どうやら かべが スライドしてエレべー...
Text0EMessage02:
    INCBIN "../../res/text/JP/banks/0e.bin", $146, $80
; うんてんせきとの さかいには / ぼうだんガラスが あるので / ちょくせつ わたせないらしい。[PAGE] / あっ! / この りょうきんいれに いれれば / いいんだな![END]
Text0EMessage03:
    INCBIN "../../res/text/JP/banks/0e.bin", $1c6, $49
; ハンドルだ。 / たかそうな かわの カバーが / つけてある。[END]
Text0EMessage04:
    INCBIN "../../res/text/JP/banks/0e.bin", $20f, $1d
; キーを さしこむ ところだ。 / キーは ついていない。[END]
Text0EMessage05:
    INCBIN "../../res/text/JP/banks/0e.bin", $22c, $1b
; ダッシュボードだ。 / カギは かかっていないようだ。[END]
Text0EMessage06:
    INCBIN "../../res/text/JP/banks/0e.bin", $247, $1a
; ん? / いの あたりが スーッと してきた![END]
Text0EMessage07:
    INCBIN "../../res/text/JP/banks/0e.bin", $261, $16
; ボンネットを あけるための / ボタンだろうか・・・?[END]
Text0EMessage08:
    INCBIN "../../res/text/JP/banks/0e.bin", $277, $1a
; この クルマの とうろくしょうだ。[PAGE] / もちぬしは・・・[PAGE] / 「ジョー・シーゲル /   ウエストエンドどおり 1212」・・・・・・!!![END]
Text0EMessage09:
    INCBIN "../../res/text/JP/banks/0e.bin", $291, $41
; じょせいの スナップしゃしんだ。 / かなり ふとっている。 / 100キロは ありそうだな・・・。[PAGE] / ・・・かおに みおぼえは ない。[END]
Text0EMessage0A:
    INCBIN "../../res/text/JP/banks/0e.bin", $2d2, $40
; まちの ちずだ。 / インクで ジョーのバーに いくようにルートが かいてある。[PAGE] / バーの じゅうしょは・・・[PAGE] / ぺオリアどおり 1060だ。[END]
Text0EMessage0B:
    INCBIN "../../res/text/JP/banks/0e.bin", $312, $44
; こいつは・・・! / かおに みおぼえが あるぞ。 / だが それいじょう おもいだせない。[PAGE] / せなかに かんつうしたとおもわれる / 3ぱつの だんこん! / おそらく そくしだろう。[PAGE] / ...
Text0EMessage0C:
    INCBIN "../../res/text/JP/banks/0e.bin", $356, $4e
Jump_00e_43a4:
    INCBIN "../../res/text/JP/banks/0e.bin", $3a4, $80
; ボンネットを あけた とたんに / ばくはつした。[END]
Text0EMessage0D:
    INCBIN "../../res/text/JP/banks/0e.bin", $424, $18
; ボンネットの なかに ばくだんが / しかけてあったらしい![END]
Text0EMessage0E:
    INCBIN "../../res/text/JP/banks/0e.bin", $43c, $1d
; エンジンを かけようとした とたんにボンネットが ばくはつした。[END]
Text0EMessage0F:
    INCBIN "../../res/text/JP/banks/0e.bin", $459, $21
; ガンショップの なかだ。 / カウンターに ふとった やさしそうなおとこが たっている。[END]
Text0EMessage10:
    INCBIN "../../res/text/JP/banks/0e.bin", $47a, $2b
; はらの でかい おとこだ。 / みるからに ひとの よさそうな / かんじだ。[END]
Text0EMessage11:
    INCBIN "../../res/text/JP/banks/0e.bin", $4a5, $24
; トゥナイト スぺシャルだ。 / ドイツせいの ピストルらしい。[END]
Text0EMessage12:
    INCBIN "../../res/text/JP/banks/0e.bin", $4c9, $14
Jump_00e_44dd:
    INCBIN "../../res/text/JP/banks/0e.bin", $4dd, $a
; 22こうけいようの だんがんだ。[END]
Text0EMessage13:
    INCBIN "../../res/text/JP/banks/0e.bin", $4e7, $11
; 「トゥナイト・スぺシャル $20」 / と かいてある。 / ピストルの ねふだらしい。[END]
Text0EMessage14:
    INCBIN "../../res/text/JP/banks/0e.bin", $4f8, $29
; ああっ あたまが クラクラする。 / はやく なんとか しなければ![PAGE] / ・・・だが きもちが あせるばかりでなにをすれば いいのか まったく / わからない!!![PAGE] / ますます きぶんが わる...
Text0EMessage15:
    INCBIN "../../res/text/JP/banks/0e.bin", $521, $78
; ピストルの シリンダーを あけた。 / たまは はいっていない。[END]
Text0EMessage16:
    INCBIN "../../res/text/JP/banks/0e.bin", $599, $1f
; ピストルの シリンダーに たまを / こめた。[END]
Text0EMessage17:
    INCBIN "../../res/text/JP/banks/0e.bin", $5b8, $16
; ピストルの シリンダーは もう / いっぱいだ。[PAGE] / これいじょう たまを こめるのは / むりだ。[END]
Text0EMessage18:
    INCBIN "../../res/text/JP/banks/0e.bin", $5ce, $2d
; たまが うまく シリンダーに / はいらない。 / サイズが ちがうようだ。[END]
Text0EMessage19:
    INCBIN "../../res/text/JP/banks/0e.bin", $5fb, $23
; みせのおとこに むかって ピストルをかまえた。[PAGE] / ・・・・・・! / なんと おれより さきに むこうが / ピストルを うった。[END]
Text0EMessage1A:
    INCBIN "../../res/text/JP/banks/0e.bin", $61e, $3d
; すると みせのおとこが / やさしいこえで いった。[PAGE] / 「20ドルですよ。」[END]
Text0EMessage1B:
    INCBIN "../../res/text/JP/banks/0e.bin", $65b, $24
; みせのおとこは えがおで いった。[PAGE] / 「1つ 25セントになります。」[END]
Text0EMessage1C:
    INCBIN "../../res/text/JP/banks/0e.bin", $67f, $21
jr_00e_46a0:
    INCBIN "../../res/text/JP/banks/0e.bin", $6a0, $2
; なぐろうとした とたんに / みせのおとこが ピストルを うった。[END]
Text0EMessage1D:
    INCBIN "../../res/text/JP/banks/0e.bin", $6a2, $20
; みせのおとこは げんきよく いった。[PAGE] / 「いらっしゃい! /  なにを おもとめですか?[PAGE] /  ピストルは 20ドル /  たまは 25セント! /  おやすいですよ!」[END]
Text0EMessage1E:
    INCBIN "../../res/text/JP/banks/0e.bin", $6c2, $4d
; ・・・しおりが はさんであるようだ。[END]
Text0EMessage1F:
    INCBIN "../../res/text/JP/banks/0e.bin", $70f, $13
; げすいどうだ。 / へんな においが たちこめてくる。 / きぶんが ますます わるくなった。[END]
Text0EMessage20:
    INCBIN "../../res/text/JP/banks/0e.bin", $722, $2c
; うえに つうじる はしごだ。 / かなり さびついている。[END]
Text0EMessage21:
    INCBIN "../../res/text/JP/banks/0e.bin", $74e, $7
jr_00e_4755:
    INCBIN "../../res/text/JP/banks/0e.bin", $755, $15
; げすいの ながれぐちだ。 / ひとが じゅうぶん とおれそうだ。[END]
Text0EMessage22:
    INCBIN "../../res/text/JP/banks/0e.bin", $76a, $1f
; げすいが ながれでている。 / とにかく ものすごい においだ。[END]
Text0EMessage23:
    INCBIN "../../res/text/JP/banks/0e.bin", $789, $1f
; げすいどうの なかだ。[END]
Text0EMessage24:
    INCBIN "../../res/text/JP/banks/0e.bin", $7a8, $c
; げすいどうの なかだ。 / あしの ふみばに ちゅういを / はらわなければ・・・。[END]
Text0EMessage25:
    INCBIN "../../res/text/JP/banks/0e.bin", $7b4, $27
; まっくらな よこあなだ。[END]
Text0EMessage26:
    INCBIN "../../res/text/JP/banks/0e.bin", $7db, $d
; よこあなだ。 / くらくて さきは みえない。[END]
Text0EMessage27:
    INCBIN "../../res/text/JP/banks/0e.bin", $7e8, $16
; げすいどうの なかだ。 / からだじゅうが へんな においに / そまって しまいそうだ・・・。[END]
Text0EMessage28:
    INCBIN "../../res/text/JP/banks/0e.bin", $7fe, $2d
; したへ おりる はしごだ。 / この したは・・・![END]
Text0EMessage29:
    INCBIN "../../res/text/JP/banks/0e.bin", $82b, $19
; よこあなだ。 / どこに つうじているんだろう?[END]
Text0EMessage2A:
    INCBIN "../../res/text/JP/banks/0e.bin", $844, $17
; げすいどうの もっとも したがわに / でたようだ。 / げすいが どんどん ながれている。[END]
Text0EMessage2B:
    INCBIN "../../res/text/JP/banks/0e.bin", $85b, $2b
; げすいが どんどん ながれている。[PAGE] / ・・・イヤな においだ。 / そこは かなり ふかいようだな。[PAGE] / ・・・・・・!! / ここは つかえそうだぞ!![END]
Text0EMessage2C:
    INCBIN "../../res/text/JP/banks/0e.bin", $886, $47
; よこあなだ。 / ひとが とおりぬけるのは ちょっと / ムリのようだ。[END]
Text0EMessage2D:
    INCBIN "../../res/text/JP/banks/0e.bin", $8cd, $21
; ・・・・・・いや まてよ![PAGE] / ここに すてるより もっといい / ほうほうが あるのでは・・・?[END]
Text0EMessage2E:
    INCBIN "../../res/text/JP/banks/0e.bin", $8ee, $2e
; ・・・・・・!! / たしか こどものころ これと / おなじような・・・?[PAGE] / そうだっ! / おもいだしたぞ!![PAGE] / ふろの せんを ぬくと いきおいよくみずが ながれて・・・そして / こ...
Text0EMessage2F:
    INCBIN "../../res/text/JP/banks/0e.bin", $91c, $7b
; ・・・・・・!! / こいつは シーゲルの / ひっせきじゃない!![PAGE] / ・・・と いうことは・・・。 / スタンウッドたちが ぎぞうした / てがみか!![END]
Text0EMessage30:
    INCBIN "../../res/text/JP/banks/0e.bin", $997, $45
; げすいどうの なかだ。 / じめじめしている。[END]
Text0EMessage31:
    INCBIN "../../res/text/JP/banks/0e.bin", $9dc, $16
; マンホールの ふただ。 / このうえは とおりだろうか・・・。[END]
Text0EMessage32:
    INCBIN "../../res/text/JP/banks/0e.bin", $9f2, $1e
; ギャー!!!!! / ワッ ワッ ワニだ!![PAGE] / げすいどうの なかに とつぜん / おおきな ワニが・・・!![END]
Text0EMessage33:
    INCBIN "../../res/text/JP/banks/0e.bin", $a10, $33
; くちを おおきく あけている! / かなり はらを すかせているようだ。はやく なんとか しなくては![END]
Text0EMessage34:
    INCBIN "../../res/text/JP/banks/0e.bin", $a43, $32
; それどころじゃない! / はやく ワニを なんとか / しなくては・・・![END]
Text0EMessage35:
    INCBIN "../../res/text/JP/banks/0e.bin", $a75, $22
; ワニを しとめたぞ。[PAGE] / ・・・どうやら いのちは / たすかったようだ・・・。[PAGE] / うんよく ピストルの おとには / だれも きづいていないようだ。[PAGE] / げすいが ふかいのが /...
Text0EMessage36:
    INCBIN "../../res/text/JP/banks/0e.bin", $a97, $5c
; ギャーッ![PAGE] / ・・・・・・むざんにも ワニに / くわれてしまった。[END]
Text0EMessage37:
    INCBIN "../../res/text/JP/banks/0e.bin", $af3, $20
; きおくが まったく ない!! / それどころか つかれが ますます / ひどくなってきた。[PAGE] / はやく なにか しなければ・・・。 / じかんが たりなくなってしまうようなきがしてならない![END]
Text0EMessage38:
    INCBIN "../../res/text/JP/banks/0e.bin", $b13, $58
; ブルータクシーの なかに はいった。うんてんしゅは イライラしている / ようだ。[END]
Text0EMessage39:
    INCBIN "../../res/text/JP/banks/0e.bin", $b6b, $28
; うんてんしゅが ぶっきらぼうに / いった。[PAGE] / 「どこへ いくんだい?」[END]
Text0EMessage3A:
    INCBIN "../../res/text/JP/banks/0e.bin", $b93, $22
; キキーッ![PAGE] / しばらくすると うんてんしゅは / いきなり タクシーをとめて いった。[PAGE] / 「おきゃくさん つきましたぜ。 /  ・・・75セント いただきます。[PAGE] /  のりにげな...
Text0EMessage3B:
    INCBIN "../../res/text/JP/banks/0e.bin", $bb5, $6b
; うんてんしゅは ぶあいそうな / たいどのまま かねの かんじょうを / はじめた。[PAGE] / 「・・・ひい ふう みい・・・。 /  たしかに うけとったぜ!」[END]
Text0EMessage3C:
    INCBIN "../../res/text/JP/banks/0e.bin", $c20, $47
; うんてんしゅだ。 / どうしたことか とても / イライラしている。[END]
Text0EMessage3D:
    INCBIN "../../res/text/JP/banks/0e.bin", $c67, $1f
; りょうきんいれだ。 / ここに おかねを いれれば / よいのだろう。[END]
Text0EMessage3E:
    INCBIN "../../res/text/JP/banks/0e.bin", $c86, $1e
Jump_00e_4ca4:
    INCBIN "../../res/text/JP/banks/0e.bin", $ca4, $2
; なんの ルートだろう・・・?[PAGE] / ・・・・・・あっ! / うらに メモが!![PAGE] / 「エース このとおりに はしれ。 /  スピードいはんに きをつけろよ。[PAGE] /  けいかんに トランク...
Text0EMessage3F:
    INCBIN "../../res/text/JP/banks/0e.bin", $ca6, $88
; ちゅうしゃきを つかおうとした。 / しかし うんてんせきとの さかいに / ある ぼうだんガラスに はばまれて / うてない![END]
Text0EMessage40:
    INCBIN "../../res/text/JP/banks/0e.bin", $d2e, $3b
; おれは うんてんしゅに ねらいをつけピストルを うった。[PAGE] / しかし うんてんせきとの さかいの / ぼうだんガラスに はばまれた。[PAGE] / じゅうせいを ききつけて パトカーがやってきた。 / お...
Text0EMessage41:
    INCBIN "../../res/text/JP/banks/0e.bin", $d69, $69
; イエロータクシーに はいった。 / うんてんしゅは ひとがよさそうだ。[END]
Text0EMessage42:
    INCBIN "../../res/text/JP/banks/0e.bin", $dd2, $22
; うんてんしゅだ。 / えらく あいそうが いい。[END]
Text0EMessage43:
    INCBIN "../../res/text/JP/banks/0e.bin", $df4, $17
; おれは かねを うんてんしゅに / わたした。 / うんてんしゅは にこやかに いった。[PAGE] / 「はい。 /  たしかに うけとりました。 /  どうも ありがとうございました。」[END]
Text0EMessage44:
    INCBIN "../../res/text/JP/banks/0e.bin", $e0b, $50
; 「ここですね。」[PAGE] / うんてんしゅは そういいながら / タクシーを とめた。 / そして いった。[PAGE] / 「75セント いただきます。 /  みぎにある りょうきんいれに /  いれてください。...
Text0EMessage45:
    INCBIN "../../res/text/JP/banks/0e.bin", $e5b, $57
; うんてんしゅが えがおで いった。[PAGE] / 「おきゃくさん /  どこまで いきますか?」[END]
Text0EMessage46:
    INCBIN "../../res/text/JP/banks/0e.bin", $eb2, $28
; マンションの まえだ。 / かなり こうきゅうそうだ。[PAGE] / こんなところに すむのは いったい / どんなヤツなんだろう・・・。[END]
Text0EMessage47:
    INCBIN "../../res/text/JP/banks/0e.bin", $eda, $3b
; きれいな ビルだ。 / たてられてから なんねんも / たっていないのだろう。[END]
Text0EMessage48:
    INCBIN "../../res/text/JP/banks/0e.bin", $f15, $24
; マンションの まえの とおりだ。 / ひとどおりは あまり おおくない。[END]
Text0EMessage49:
    INCBIN "../../res/text/JP/banks/0e.bin", $f39, $23
; マンションの まえに おとらず / ロビーも りっぱだ。[PAGE] / しろい えんちゅうが ごうかさを / いっそう ひきたてている。[END]
Text0EMessage4A:
    INCBIN "../../res/text/JP/banks/0e.bin", $f5c, $3a
; エレべータだ。 / しかし ふつうのものとは そうさの / しかたが ちがうようだ。[END]
Text0EMessage4B:
    INCBIN "../../res/text/JP/banks/0e.bin", $f96, $27
; みぞのようなものが ある。[END]
Text0EMessage4C:
    INCBIN "../../res/text/JP/banks/0e.bin", $fbd, $e
; ロビーだ。 / しょうめんに エレべータが みえる。[END]
Text0EMessage4D:
    INCBIN "../../res/text/JP/banks/0e.bin", $fcb, $19
; パスカードを みぞに さしこんだ。[PAGE] / スー・・・。 / エレべータの ドアが あいた。[END]
Text0EMessage4E:
    INCBIN "../../res/text/JP/banks/0e.bin", $fe4, $29
; パスカードを みぞに さしこんだ。[PAGE] / スー・・・。 / エレべータの ドアが しまった。[END]
Text0EMessage4F:
    INCBIN "../../res/text/JP/banks/0e.bin", $100d, $2a
; ロビーに あったものと おなじだ。 / ・・・と いうことは さっきと / おなじやりかたで すれば いいのか。[END]
Text0EMessage50:
    INCBIN "../../res/text/JP/banks/0e.bin", $1037, $35
; エレべータの なかだ。[PAGE] / なにを ぐずぐず しているんだ! / することは きまっているじゃないか![END]
Text0EMessage51:
    INCBIN "../../res/text/JP/banks/0e.bin", $106c, $2f
jr_00e_509b:
    INCBIN "../../res/text/JP/banks/0e.bin", $109b, $1
; パスカードを みぞへ さしこんだ。 / ・・・・・・。[END]
Text0EMessage52:
    INCBIN "../../res/text/JP/banks/0e.bin", $109c, $1
jr_00e_509d:
    INCBIN "../../res/text/JP/banks/0e.bin", $109d, $19
; しゃれたへやだ。 / もちぬしは かなりの ひとだろう。 / ・・・かぐの しゅみもいい。[END]
Text0EMessage53:
    INCBIN "../../res/text/JP/banks/0e.bin", $10b6, $a
jr_00e_50c0:
    INCBIN "../../res/text/JP/banks/0e.bin", $10c0, $20
; このへやに いやみなほど にあう / シャンデリアだ。[END]
Text0EMessage54:
    INCBIN "../../res/text/JP/banks/0e.bin", $10e0, $1a
; ながイスだ。 / カバーは かわで できている。[END]
Text0EMessage55:
    INCBIN "../../res/text/JP/banks/0e.bin", $10fa, $17
; ひとりがけの イスだ。 / すわりごこちが よさそうだ。[END]
Text0EMessage56:
    INCBIN "../../res/text/JP/banks/0e.bin", $1111, $1b
; きれいな いろづかいの えだ。 / とても モダンなかんじが する。[END]
Text0EMessage57:
    INCBIN "../../res/text/JP/banks/0e.bin", $112c, $21
; だんろだ。 / えんとつが ないところを みると / たんなる かざりだろう。[END]
Text0EMessage58:
    INCBIN "../../res/text/JP/banks/0e.bin", $114d, $24
; ひくい ちいさな テーブルだ。 / ソファーなどと よくいっしょに / おかれているものだ。[END]
Text0EMessage59:
    INCBIN "../../res/text/JP/banks/0e.bin", $1171, $4
jr_00e_5175:
    INCBIN "../../res/text/JP/banks/0e.bin", $1175, $27
; グラビアざっしだ。 / こんなところで こんなものを / よんでいる ヒマはない。[END]
Text0EMessage5A:
    INCBIN "../../res/text/JP/banks/0e.bin", $119c, $26
; まるくて おおきな カガミだ。 / きれいに みがかれている。[END]
Text0EMessage5B:
    INCBIN "../../res/text/JP/banks/0e.bin", $11c2, $1e
; しゃしんだ。 / おんなが ひとりで うつっている。[PAGE] / かみは くりげいろで かおも / ととのっている。 / かなり いいおんなだ。[PAGE] / ・・・んっ? / うらに じゅうしょが・・・。[PA...
Text0EMessage5C:
    INCBIN "../../res/text/JP/banks/0e.bin", $11e0, $7d
; ほんだなだ。 / ひゃっかじてんなどの ぶあつい / ほんが いっぱい はいっている。[END]
Text0EMessage5D:
    INCBIN "../../res/text/JP/banks/0e.bin", $125d, $28
; ・・・・・・なんだ? / このへやで やりのこしたことが / あるような きがする・・・。[END]
Text0EMessage5E:
    INCBIN "../../res/text/JP/banks/0e.bin", $1285, $2a
; バンガローだ。 / にわが あれほうだい あれている。 / ひとは すんでいないのだろうか?[END]
Text0EMessage5F:
    INCBIN "../../res/text/JP/banks/0e.bin", $12af, $2b
; あいたままでは つかえない。[END]
Text0EMessage60:
    INCBIN "../../res/text/JP/banks/0e.bin", $12da, $f
; ドアだ。[PAGE] / どうも カギが かかっているらしい。[PAGE] / ここの カギらしいものは / もっていないが・・・。[END]
Text0EMessage61:
    INCBIN "../../res/text/JP/banks/0e.bin", $12e9, $31
; ふふふん! / こうなったら ちからずくで / あけるしかないな![PAGE] / カギを こわすのなら やはり・・・。[END]
Text0EMessage62:
    INCBIN "../../res/text/JP/banks/0e.bin", $131a, $31
; よっぱらいは ニヤニヤしながら / いった。[PAGE] / 「25セントコイン 2まいだよう!」[END]
Text0EMessage63:
    INCBIN "../../res/text/JP/banks/0e.bin", $134b, $28
; カチッ![PAGE] / ・・・たまが なくなったようだ。[END]
Text0EMessage64:
    INCBIN "../../res/text/JP/banks/0e.bin", $1373, $16
; うらに こうかいてある。 / ・・・・・・・。[PAGE] / 「エース このとおりに はしれ。 /  スピードいはんに きをつけろよ。[PAGE] /  けいかんに トランクの ひとじちを みつけられたくないだろう。...
Text0EMessage65:
    INCBIN "../../res/text/JP/banks/0e.bin", $1389, $9d
; たてものの まえの とおりだ。 / タクシーが とまっている。[END]
Text0EMessage66:
    INCBIN "../../res/text/JP/banks/0e.bin", $1426, $1e
; たてものの なかに はいった。 / やすっぽい こうすいの においが / はなをつく・・・。[END]
Text0EMessage67:
    INCBIN "../../res/text/JP/banks/0e.bin", $1444, $2b
; なんの かざりけもない テーブルだ。ナイトテーブルの かわりなのだろう。ひきだしが ついている。[END]
Text0EMessage68:
    INCBIN "../../res/text/JP/banks/0e.bin", $146f, $31
; ちいさな かみきれだ。 / すうじが かいてある。[PAGE] / 「25ー03ー45」[END]
Text0EMessage69:
    INCBIN "../../res/text/JP/banks/0e.bin", $14a0, $23
; かみきれだ。 / すうじが かいてある。[PAGE] / 「33ー24ー36」[END]
Text0EMessage6A:
    INCBIN "../../res/text/JP/banks/0e.bin", $14c3, $1e
; マットのかたそうな べッドだ。 / きちんと べッドメイキングが / してある。[END]
Text0EMessage6B:
    INCBIN "../../res/text/JP/banks/0e.bin", $14e1, $25
; イアリングだ。[END]
Text0EMessage6C:
    INCBIN "../../res/text/JP/banks/0e.bin", $1506, $8
; マスター キーだ。 / かなり よごれている。[END]
Text0EMessage6D:
    INCBIN "../../res/text/JP/banks/0e.bin", $150e, $7
jr_00e_5515:
    INCBIN "../../res/text/JP/banks/0e.bin", $1515, $f
; にっきちょうだ。 / 「マーサ」と たっぴつで なまえが / かかれている。[END]
Text0EMessage6E:
    INCBIN "../../res/text/JP/banks/0e.bin", $1524, $23
; ひらやの たてものの なかだ。[END]
Text0EMessage6F:
    INCBIN "../../res/text/JP/banks/0e.bin", $1547, $10
; ふつうの かみせいの しおりだ。[PAGE] / おや? / 「J・S」と イニシャルが / はいっている。[END]
Text0EMessage70:
    INCBIN "../../res/text/JP/banks/0e.bin", $1557, $15
jr_00e_556c:
    INCBIN "../../res/text/JP/banks/0e.bin", $156c, $16
; 「12がつ 5にち /  また シーゲルから さそわれた。 /  かれとは とっくに /  わかれたのに・・・。[PAGE] /  あんな しっとぶかい おとこと /  つきあっていたって なんの /  とくにも なり...
Text0EMessage71:
    INCBIN "../../res/text/JP/banks/0e.bin", $1582, $f8
; おれは しおりが はさんである / ぺージを ひらいた。[END]
Text0EMessage72:
    INCBIN "../../res/text/JP/banks/0e.bin", $167a, $1b
; ずいぶんと きたない オフィスビルのまえだ。[END]
Text0EMessage73:
    INCBIN "../../res/text/JP/banks/0e.bin", $1695, $17
; ビルだ。 / たかさは そんなに ない。[END]
Text0EMessage74:
    INCBIN "../../res/text/JP/banks/0e.bin", $16ac, $13
; とおりだ。 / あたりは とても しずかだ。[END]
Text0EMessage75:
    INCBIN "../../res/text/JP/banks/0e.bin", $16bf, $15
; ロビーだ。 / みぎがわには ろうか ひだりがわにはかいだんが みえる。[END]
Text0EMessage76:
    INCBIN "../../res/text/JP/banks/0e.bin", $16d4, $23
; ろうかだ。 / かなり うすぐらい。[END]
Text0EMessage77:
    INCBIN "../../res/text/JP/banks/0e.bin", $16f7, $5
jr_00e_56fc:
    INCBIN "../../res/text/JP/banks/0e.bin", $16fc, $c
; オフィスの まえの ようだ。 / 「ドクター ブロディ」と かんばんがかかっている。[END]
Text0EMessage78:
    INCBIN "../../res/text/JP/banks/0e.bin", $1708, $29
; ・・・ひたいに あぶらあせを / にじませ かおを ゆがめはじめた。 / くるしそうだ![PAGE] / ・・・しばらくすると もとに / もどった・・・。 / しぬことは なかったようだ。[END]
Text0EMessage79:
    INCBIN "../../res/text/JP/banks/0e.bin", $1731, $50
; いしゃの オフィスらしく / クスリビンが いっぱいならんでいる。[PAGE] / みまわしたところ だれも / いないようだ。[END]
Text0EMessage7A:
    INCBIN "../../res/text/JP/banks/0e.bin", $1781, $35
; もくせいの クスリだなだ。 / かなり ふるいものらしい。[END]
Text0EMessage7B:
    INCBIN "../../res/text/JP/banks/0e.bin", $17b6, $1c
; どこの オフィスにでもある / キャビネットだ。[PAGE] / なかに カルテでも / はいっているのだろう。[PAGE] / おや? / カギが かかっているようだ。[END]
Text0EMessage7C:
    INCBIN "../../res/text/JP/banks/0e.bin", $17d2, $40
; けんがんひょうだ。 / べつに めは わるくないようだ。[END]
Text0EMessage7D:
    INCBIN "../../res/text/JP/banks/0e.bin", $1812, $1b
; カルテみたいだ。[PAGE] / 「ーー エース・ハーディング ーー /  このまえの けんこうしんだんで /  きんえんを つよくすすめた。」[END]
Text0EMessage7E:
    INCBIN "../../res/text/JP/banks/0e.bin", $182d, $3d
; りょうしゅうしょの ひかえだ。 / ひんめいと ねだんが かかれている。[PAGE] / おや? / ドクターの はしりがきが・・・。[PAGE] / 「ジョー・シーゲルの なまえで /  ひしょの マーサ・ビッカース...
Text0EMessage7F:
    INCBIN "../../res/text/JP/banks/0e.bin", $186a, $5a
jr_00e_58c4:
    INCBIN "../../res/text/JP/banks/0e.bin", $18c4, $802
Call_00e_60c6:
    INCBIN "../../res/text/JP/banks/0e.bin", $20c6, $1e50
Call_00e_7f16:
    INCBIN "../../res/text/JP/banks/0e.bin", $3f16, $99
Call_00e_7faf:
    INCBIN "../../res/text/JP/banks/0e.bin", $3faf, $1
Call_00e_7fb0:
    INCBIN "../../res/text/JP/banks/0e.bin", $3fb0, $35
Call_00e_7fe5:
    INCBIN "../../res/text/JP/banks/0e.bin", $3fe5, $4
Call_00e_7fe9:
Jump_00e_7fe9:
    INCBIN "../../res/text/JP/banks/0e.bin", $3fe9, $17
