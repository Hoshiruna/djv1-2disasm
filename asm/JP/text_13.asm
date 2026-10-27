; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text13Msgs0:
    db LOW(Text13Message00), HIGH(Text13Message00)
    db LOW(Text13Message01), HIGH(Text13Message01)
    db LOW(Text13Message02), HIGH(Text13Message02)
    db LOW(Text13Message03), HIGH(Text13Message03)
    db LOW(Text13Message04), HIGH(Text13Message04)
    db LOW(Text13Message05), HIGH(Text13Message05)
    db LOW(Text13Message06), HIGH(Text13Message06)
    db LOW(Text13Message07), HIGH(Text13Message07)
    db LOW(Text13Message08), HIGH(Text13Message08)
    db LOW(Text13Message09), HIGH(Text13Message09)
    db LOW(Text13Message0A), HIGH(Text13Message0A)
    db LOW(Text13Message0B), HIGH(Text13Message0B)
    db LOW(Text13Message0C), HIGH(Text13Message0C)
    db LOW(Text13Message0D), HIGH(Text13Message0D)
    db LOW(Text13Message0E), HIGH(Text13Message0E)
    db LOW(Text13Message0F), HIGH(Text13Message0F)
    db LOW(Text13Message10), HIGH(Text13Message10)
    db LOW(Text13Message11), HIGH(Text13Message11)
    db LOW(Text13Message12), HIGH(Text13Message12)
    db LOW(Text13Message12), HIGH(Text13Message12)
    db LOW(Text13Message14), HIGH(Text13Message14)
    db LOW(Text13Message15), HIGH(Text13Message15)
    db LOW(Text13Message16), HIGH(Text13Message16)
    db LOW(Text13Message17), HIGH(Text13Message17)
    db LOW(Text13Message18), HIGH(Text13Message18)
    db LOW(Text13Message19), HIGH(Text13Message19)
    db LOW(Text13Message1A), HIGH(Text13Message1A)
    db LOW(Text13Message1B), HIGH(Text13Message1B)
    db LOW(Text13Message1C), HIGH(Text13Message1C)
    db LOW(Text13Message1D), HIGH(Text13Message1D)
    db LOW(Text13Message1E), HIGH(Text13Message1E)
    db LOW(Text13Message1F), HIGH(Text13Message1F)
    db LOW(Text13Message20), HIGH(Text13Message20)
    db LOW(Text13Message21), HIGH(Text13Message21)
    db LOW(Text13Message22), HIGH(Text13Message22)
    db LOW(Text13Message23), HIGH(Text13Message23)
    db LOW(Text13Message24), HIGH(Text13Message24)
    db LOW(Text13Message25), HIGH(Text13Message25)
    db LOW(Text13Message26), HIGH(Text13Message26)
    db LOW(Text13Message27), HIGH(Text13Message27)
    db LOW(Text13Message28), HIGH(Text13Message28)
    db LOW(Text13Message29), HIGH(Text13Message29)
    db LOW(Text13Message2A), HIGH(Text13Message2A)
    db LOW(Text13Message2B), HIGH(Text13Message2B)
    db LOW(Text13Message2C), HIGH(Text13Message2C)
    db LOW(Text13Message2D), HIGH(Text13Message2D)
    db LOW(Text13Message2E), HIGH(Text13Message2E)
    db LOW(Text13Message2F), HIGH(Text13Message2F)
    db LOW(Text13Message30), HIGH(Text13Message30)
    db LOW(Text13Message31), HIGH(Text13Message31)
    db LOW(Text13Message32), HIGH(Text13Message32)
    db LOW(Text13Message33), HIGH(Text13Message33)
    db LOW(Text13Message34), HIGH(Text13Message34)
    db LOW(Text13Message35), HIGH(Text13Message35)
    db LOW(Text13Message36), HIGH(Text13Message36)
    db LOW(Text13Message37), HIGH(Text13Message37)
    db LOW(Text13Message38), HIGH(Text13Message38)
    db LOW(Text13Message39), HIGH(Text13Message39)
    db LOW(Text13Message3A), HIGH(Text13Message3A)
    db LOW(Text13Message3B), HIGH(Text13Message3B)
    db LOW(Text13Message3C), HIGH(Text13Message3C)
    db LOW(Text13Message3D), HIGH(Text13Message3D)
    db LOW(Text13Message3E), HIGH(Text13Message3E)
    db LOW(Text13Message3F), HIGH(Text13Message3F)
; Sixty-four message pointers for one text group.
Text13Msgs1:
    db LOW(Text13Message40), HIGH(Text13Message40)
    db LOW(Text13Message41), HIGH(Text13Message41)
    db LOW(Text13Message42), HIGH(Text13Message42)
    db LOW(Text13Message43), HIGH(Text13Message43)
    db LOW(Text13Message44), HIGH(Text13Message44)
    db LOW(Text13Message45), HIGH(Text13Message45)
    db LOW(Text13Message46), HIGH(Text13Message46)
    db LOW(Text13Message47), HIGH(Text13Message47)
    db LOW(Text13Message48), HIGH(Text13Message48)
    db LOW(Text13Message49), HIGH(Text13Message49)
    db LOW(Text13Message4A), HIGH(Text13Message4A)
    db LOW(Text13Message4B), HIGH(Text13Message4B)
    db LOW(Text13Message4C), HIGH(Text13Message4C)
    db LOW(Text13Message4D), HIGH(Text13Message4D)
    db LOW(Text13Message4E), HIGH(Text13Message4E)
    db LOW(Text13Message4F), HIGH(Text13Message4F)
    db LOW(Text13Message50), HIGH(Text13Message50)
    db LOW(Text13Message51), HIGH(Text13Message51)
    db LOW(Text13Message52), HIGH(Text13Message52)
    db LOW(Text13Message53), HIGH(Text13Message53)
    db LOW(Text13Message54), HIGH(Text13Message54)
    db LOW(Text13Message55), HIGH(Text13Message55)
    db LOW(Text13Message56), HIGH(Text13Message56)
    db LOW(Text13Message57), HIGH(Text13Message57)
    db LOW(Text13Message58), HIGH(Text13Message58)
    db LOW(Text13Message59), HIGH(Text13Message59)
    db LOW(Text13Message5A), HIGH(Text13Message5A)
    db LOW(Text13Message5B), HIGH(Text13Message5B)
    db LOW(Text13Message5C), HIGH(Text13Message5C)
    db LOW(Text13Message5D), HIGH(Text13Message5D)
    db LOW(Text13Message5E)
jr_013_40bd:
    db HIGH(Text13Message5E)
    db LOW(Text13Message5F), HIGH(Text13Message5F)
    db LOW(Text13Message60), HIGH(Text13Message60)
    db LOW(Text13Message61), HIGH(Text13Message61)
jr_013_40c4:
    db LOW(Text13Message62), HIGH(Text13Message62)
    db LOW(Text13Message63), HIGH(Text13Message63)
    db LOW(Text13Message64), HIGH(Text13Message64)
    db LOW(Text13Message65), HIGH(Text13Message65)
    db LOW(Text13Message66), HIGH(Text13Message66)
    db LOW(Text13Message67), HIGH(Text13Message67)
    db LOW(Text13Message68), HIGH(Text13Message68)
    db LOW(Text13Message69), HIGH(Text13Message69)
    db LOW(Text13Message6A), HIGH(Text13Message6A)
    db LOW(Text13Message6B), HIGH(Text13Message6B)
    db LOW(Text13Message6C), HIGH(Text13Message6C)
    db LOW(Text13Message6D), HIGH(Text13Message6D)
    db LOW(Text13Message6E), HIGH(Text13Message6E)
    db LOW(Text13Message6F), HIGH(Text13Message6F)
    db LOW(Text13Message70), HIGH(Text13Message70)
    db LOW(Text13Message71), HIGH(Text13Message71)
    db LOW(Text13Message72), HIGH(Text13Message72)
    db LOW(Text13Message73), HIGH(Text13Message73)
    db LOW(Text13Message74), HIGH(Text13Message74)
    db LOW(Text13Message75), HIGH(Text13Message75)
    db LOW(Text13Message76), HIGH(Text13Message76)
    db LOW(Text13Message77), HIGH(Text13Message77)
    db LOW(Text13Message78), HIGH(Text13Message78)
    db LOW(Text13Message79), HIGH(Text13Message79)
    db LOW(Text13Message7A), HIGH(Text13Message7A)
    db LOW(Text13Message7B), HIGH(Text13Message7B)
    db LOW(Text13Message7C), HIGH(Text13Message7C)
    db LOW(Text13Message7D), HIGH(Text13Message7D)
    db LOW(Text13Message7E), HIGH(Text13Message7E)
    db LOW(Text13Message7F), HIGH(Text13Message7F)
; カウンターの なかに きんぱつの / おんなが いる。[PAGE] / ヒューッ! / いろっぽいな・・・。[END]
Text13Message00:
    INCBIN "../../res/text/JP/banks/13.bin", $100, $2b
; へやから でたとたん にんそうの / わるい おとこが おれの まえに / たちはだかった![END]
Text13Message01:
    INCBIN "../../res/text/JP/banks/13.bin", $12b, $2b
; おれは むりやり へやの なかに / おしこめられてしまった。[END]
Text13Message02:
    INCBIN "../../res/text/JP/banks/13.bin", $156, $1e
; おれは ようじんぼうに えりくびを / つかまれ そとへ ほうりだされて / しまった・・・。[END]
Text13Message03:
    INCBIN "../../res/text/JP/banks/13.bin", $174, $2c
; 「カジノは もうかっているかい?」[PAGE] / おれは あいそよく こえを かけた。[PAGE] / だが こたえを しぶっている。 / ・・・くだらない せけんばなしは / したくないようだ。[END]
Text13Message04:
    INCBIN "../../res/text/JP/banks/13.bin", $1a0, $50
; おんなは いった。[END]
Text13Message05:
    INCBIN "../../res/text/JP/banks/13.bin", $1f0, $a
; ブラックジャックの テーブルだ。 / ディーラーが さそうような めつきでおれに いった。[END]
Text13Message06:
    INCBIN "../../res/text/JP/banks/13.bin", $1fa, $2c
; 「きょうは まけてばかりなのです。 /  わたしと しょうぶしたいなら /  いまが チャンスですよ!」[END]
Text13Message07:
    INCBIN "../../res/text/JP/banks/13.bin", $226, $31
; ・・・しずかだ。[END]
Text13Message08:
    INCBIN "../../res/text/JP/banks/13.bin", $257, $9
; ブラックジャックの テーブルで / ディーラーが カードを きっている。[END]
Text13Message09:
    INCBIN "../../res/text/JP/banks/13.bin", $260, $23
; モダンな ブラックジャックの / テーブルだ。[END]
Text13Message0A:
    INCBIN "../../res/text/JP/banks/13.bin", $283, $16
; おおむかしの ひとが この / れっしゃを みたら ビックリする / だろうな・・・。[END]
Text13Message0B:
    INCBIN "../../res/text/JP/banks/13.bin", $299, $28
; ひじょうぐちのようだ。[END]
Text13Message0C:
    INCBIN "../../res/text/JP/banks/13.bin", $2c1, $c
; ルーディーは しんぶんの きりぬきをチラッとみた。[PAGE] / そして おれに ウィンクをすると / ニマッと わらった。[END]
Text13Message0D:
    INCBIN "../../res/text/JP/banks/13.bin", $2cd, $36
; おれが だれなのか わかったようだ。ルーディーは こえを ひそめて / いった。[PAGE] / 「ひさしぶりだな・・・エース。 /  あいかわらず くろうしている /  ようだな・・・。[PAGE] /  ・・・わか...
Text13Message0E:
    INCBIN "../../res/text/JP/banks/13.bin", $303, $86
; 「あのころは よかったな・・・。」[PAGE] / ルーディーは とおくを みながら / しみじみと いった。[END]
Text13Message0F:
    INCBIN "../../res/text/JP/banks/13.bin", $389, $2e
; 「ここの オーナーは どんな /  ひとなんだ?」[END]
Text13Message10:
    INCBIN "../../res/text/JP/banks/13.bin", $3b7, $18
; 「それでは せつめいします。[PAGE] /  まず カードを 2まいずつ /  くばります。[PAGE] /  つぎに あなたの カードを /  1まい めくります。[PAGE] /  そこで かけるチップの まいす...
Text13Message11:
    INCBIN "../../res/text/JP/banks/13.bin", $3cf, $82
Call_013_4451:
    INCBIN "../../res/text/JP/banks/13.bin", $451, $70
Jump_013_44c1:
    INCBIN "../../res/text/JP/banks/13.bin", $4c1, $78
; れっしゃは はっしゃを しらせる / きてきを ならした。[END]
Text13Message12:
    INCBIN "../../res/text/JP/banks/13.bin", $539, $1c
; ルーディーが いたずらっぽく / わらいながら ささやいた・・・。[PAGE] / 「エース・・・。 /  おまえは ギャンブルも /  ボクシングも かつために /  うまれてきたんだな・・・。」[END]
Text13Message14:
    INCBIN "../../res/text/JP/banks/13.bin", $555, $30
jr_013_4585:
    INCBIN "../../res/text/JP/banks/13.bin", $585, $24
; 「ルーディー・カワルスキ」と / なふだに かいてある。[END]
Text13Message15:
    INCBIN "../../res/text/JP/banks/13.bin", $5a9, $1b
; この ディーラー・・・。 / むかし どこかで みたような きが / するんだが・・・。[END]
Text13Message16:
    INCBIN "../../res/text/JP/banks/13.bin", $5c4, $29
; ルーディーは おれの かおをみて / なつかしそうに ほほえんだ。[END]
Text13Message17:
    INCBIN "../../res/text/JP/banks/13.bin", $5ed, $20
; ということは・・・ / 0ばんは けいさつに わたした / めこぼしりょうなんだな・・・。[END]
Text13Message18:
    INCBIN "../../res/text/JP/banks/13.bin", $60d, $2a
; 「おかねが たりませんよ。」[END]
Text13Message19:
    INCBIN "../../res/text/JP/banks/13.bin", $637, $f
; 「また よろしく たのむよ!」[END]
Text13Message1A:
    INCBIN "../../res/text/JP/banks/13.bin", $646, $10
; 「かねが たりねえぜ・・・。」[END]
Text13Message1B:
    INCBIN "../../res/text/JP/banks/13.bin", $656, $10
; おとこは ヒソヒソと いった。[PAGE] / 「おれは ブラックマーケットの /  ばいにんだ。 /  いっとくが うりものの ねだんは /  やすくないぜ・・・![PAGE] /  うりものは /  でんちが 3こ...
Text13Message1C:
    INCBIN "../../res/text/JP/banks/13.bin", $666, $75
; さいしんしきの エレべータだ。 / すごいなあ・・・。[END]
Text13Message1D:
    INCBIN "../../res/text/JP/banks/13.bin", $6db, $1a
; この ホテルの こうこくだ。[PAGE] / 「ひとばんで あなたも だいふごう! こよい この ホテルの カジノで /  あなたの ゆめが げんじつのものと なるでしょう!!」[END]
Text13Message1E:
    INCBIN "../../res/text/JP/banks/13.bin", $6f5, $50
; 3つの ボタンがついた パネルだ。[END]
Text13Message1F:
    INCBIN "../../res/text/JP/banks/13.bin", $745, $f
jr_013_4754:
    INCBIN "../../res/text/JP/banks/13.bin", $754, $3
; おや・・・? / 3かいの ボタンの うえに わずかにスぺースが あるぞ![END]
Text13Message20:
    INCBIN "../../res/text/JP/banks/13.bin", $757, $24
; パネルの いちばん うえに / マグネットボタンが おさまっている。[END]
Text13Message21:
    INCBIN "../../res/text/JP/banks/13.bin", $77b, $21
; れっしゃは ゆっくりと はっしゃし / おれは ひとり のこされた・・・。[END]
Text13Message22:
    INCBIN "../../res/text/JP/banks/13.bin", $79c, $24
; はっはああん・・・。[PAGE] / この ボタンは かんけいしゃいがいが4かいへ いけないように / つくられたんだな・・・。[END]
Text13Message23:
    INCBIN "../../res/text/JP/banks/13.bin", $7c0, $37
jr_013_47f7:
; なかなか シャレた ドアだ。 / デザインが いいな・・・。[END]
Text13Message24:
    INCBIN "../../res/text/JP/banks/13.bin", $7f7, $1d
; エレべータは うごきはじめた。[END]
Text13Message25:
    INCBIN "../../res/text/JP/banks/13.bin", $814, $10
; ・・・カチャ![PAGE] / マグネットボタンは 3かいの / ボタンの うえに おさまった。[END]
Text13Message26:
    INCBIN "../../res/text/JP/banks/13.bin", $824, $27
; きもちのいい オフィスだ。 / この へやの もちぬしは さぞかし / しごとが はかどるだろうな・・・。[END]
Text13Message27:
    INCBIN "../../res/text/JP/banks/13.bin", $84b, $32
; ちゃいろの かわで つくられた / しつのいい かいてんイスだ。[END]
Text13Message28:
    INCBIN "../../res/text/JP/banks/13.bin", $87d, $1f
; マドからは とおりの けしきが / よくみえる。[END]
Text13Message29:
    INCBIN "../../res/text/JP/banks/13.bin", $89c, $17
; うわーっ・・・。 / ながめが いいなあ・・・。[PAGE] / ここからなら ラスべガスぜんたいが / みわたせるぞ![END]
Text13Message2A:
    INCBIN "../../res/text/JP/banks/13.bin", $8b3, $31
; しみひとつない きれいな ひよけだ。[END]
Text13Message2B:
    INCBIN "../../res/text/JP/banks/13.bin", $8e4, $13
; しろい ぬので つくられた / ひよけだ。[END]
Text13Message2C:
    INCBIN "../../res/text/JP/banks/13.bin", $8f7, $14
; このつや・・・。 / このいろ・・・。[PAGE] / おれの オフィスに あるものとは / くらべものに ならないくらい / こうきゅうな つくえだ。[END]
Text13Message2D:
    INCBIN "../../res/text/JP/banks/13.bin", $90b, $3f
; ちゃいろの かみぶくろだ。 / あぶらの しみが できている。[END]
Text13Message2E:
    INCBIN "../../res/text/JP/banks/13.bin", $94a, $1e
; しんちゅうの ぼうしかけだ。[END]
Text13Message2F:
    INCBIN "../../res/text/JP/banks/13.bin", $968, $f
; だいの うえに とりが のっている / ぺーパーウエイトだ。[PAGE] / ながくて するどい くちばしだ。 / この とりは ハチドリを / かたどっているのだろう。[PAGE] / ・・・おや? / ハチドリが ...
Text13Message30:
    INCBIN "../../res/text/JP/banks/13.bin", $977, $2e
jr_013_49a5:
    INCBIN "../../res/text/JP/banks/13.bin", $9a5, $2
jr_013_49a7:
    INCBIN "../../res/text/JP/banks/13.bin", $9a7, $2e
; ひにちが 0ばんと おなじ・・・。[PAGE] / ということは ここに かいてある / きんがくは マクマーフィーが / シーゲルから もらった / ほうしゅうなのだろう・・・。[END]
Text13Message31:
    INCBIN "../../res/text/JP/banks/13.bin", $9d5, $4d
; くちばしが ハリのように するどく / とがった ハチドリの つくりものだ。[END]
Text13Message32:
    INCBIN "../../res/text/JP/banks/13.bin", $a22, $25
; あれ・・・? / この ほそくて するどい くちばし。ハネのついた ほそい からだ。[PAGE] / やっぱり なにかに にているような / きが するんだが・・・。[END]
Text13Message33:
    INCBIN "../../res/text/JP/banks/13.bin", $a47, $42
jr_013_4a89:
    INCBIN "../../res/text/JP/banks/13.bin", $a89, $6
; ぺーパーウエイトの だいだ。[END]
Text13Message34:
    INCBIN "../../res/text/JP/banks/13.bin", $a8f, $f
; おれは ひじょうぐちに いくために / せんろに おりたった・・・。[END]
Text13Message35:
    INCBIN "../../res/text/JP/banks/13.bin", $a9e, $21
; イギリスせいの ぎんの / ぺーパーナイフだ。[END]
Text13Message36:
    INCBIN "../../res/text/JP/banks/13.bin", $abf, $16
; しまった! / むこうから れっしゃが![PAGE] / ・・・そう きづいたときには / おそすぎた・・・。[PAGE] / おれは よけるまもなく れっしゃに / ひかれてしまった・・・。[END]
Text13Message37:
    INCBIN "../../res/text/JP/banks/13.bin", $ad5, $4b
; うっ! / なんだ この サンドウイッチは![PAGE] / くさって すえた においが するぞ![END]
Text13Message38:
    INCBIN "../../res/text/JP/banks/13.bin", $b20, $28
; おおきな かわせいの / きろくちょうだ。[END]
Text13Message39:
    INCBIN "../../res/text/JP/banks/13.bin", $b48, $14
; べンティーニが かねの つかいみちをマロンに ほうこくする ための / ものらしい・・・。[PAGE] / 「ばしょ シカゴ /  せきにんしゃ ジョー・シーゲル[PAGE] /  3/24 1ばん $118000 /...
Text13Message3A:
    INCBIN "../../res/text/JP/banks/13.bin", $b5c, $bc
; どうして 0ばんが あるものと / ないものが あるのだろうか・・・?[PAGE] / いったい 0ばんは なにを / いみするのだろうか?[END]
Text13Message3B:
    INCBIN "../../res/text/JP/banks/13.bin", $c18, $36
Jump_013_4c4e:
    INCBIN "../../res/text/JP/banks/13.bin", $c4e, $2
jr_013_4c50:
    INCBIN "../../res/text/JP/banks/13.bin", $c50, $3
; リストは つづいているが ばんごうのいみが わからないので これいじょうしらべても いみがなさそうだ。[END]
Text13Message3C:
    INCBIN "../../res/text/JP/banks/13.bin", $c53, $34
; ぺーパーウエイトを ふたつに / わけた。[PAGE] / ・・・おや? / この ハチドリ なにかに / にているぞ・・・。[END]
Text13Message3D:
    INCBIN "../../res/text/JP/banks/13.bin", $c87, $1d
Jump_013_4ca4:
    INCBIN "../../res/text/JP/banks/13.bin", $ca4, $15
; うぐえーっ! / すえた においとともに すっぱい / えきが くちのなかに とびだした![END]
Text13Message3E:
    INCBIN "../../res/text/JP/banks/13.bin", $cb9, $2a
; れっしゃが じゃまをしていて / すすめない![END]
Text13Message3F:
    INCBIN "../../res/text/JP/banks/13.bin", $ce3, $16
; 38スぺシャルの たまだ。[END]
Text13Message40:
    INCBIN "../../res/text/JP/banks/13.bin", $cf9, $e
; ダニー・べンティーニの / たんじょうパーティーで スピーチを / している マロンの しゃしんだ。[PAGE] / マロンの めには なみだが / にじんでいるようにみえる。[PAGE] / マロンは べンティーニを...
Text13Message41:
    INCBIN "../../res/text/JP/banks/13.bin", $d07, $6c
; だが べンティーニのほうは マロンをおやのように したっているの / だろうか・・・?[PAGE] / うわさによると べンティーニの / せいかくは マロンよりも すうだん / れいこくだと いわれている・・・。[END]
Text13Message42:
    INCBIN "../../res/text/JP/banks/13.bin", $d73, $5e
; うーむ・・・。[PAGE] / よほど はっきりした しょうこを / つかまなければ べンティーニが / かねを よこどりしたと マロンは / しんじないだろう・・・。[END]
Text13Message43:
    INCBIN "../../res/text/JP/banks/13.bin", $dd1, $47
; うーん・・・。 / さすがは ボスのオフィス・・・。[PAGE] / ひろびろとしていて おいてあるもの / すべてが こうきゅうそうだ。[END]
Text13Message44:
    INCBIN "../../res/text/JP/banks/13.bin", $e18, $3a
; ねだんの たかそうな イスだ。 / おれの オフィスにも こんな イスがあれば いいのになあ・・・。[END]
Text13Message45:
    INCBIN "../../res/text/JP/banks/13.bin", $e52, $31
; この イスに すわって まっていればマロンが あらわれるに ちがいない。[PAGE] / だが このへやに よそものが はいることを かんげいしないだろう。[END]
Text13Message46:
    INCBIN "../../res/text/JP/banks/13.bin", $e83, $47
; マロンと べンティーニが おおきな / さかなを とくいげに もちあげているしゃしんだ。[PAGE] / マロンは マフィアの ボスとは / おもえないほど あたたかい / ほほえみを うかべている。[PAGE] / ...
Text13Message47:
    INCBIN "../../res/text/JP/banks/13.bin", $eca, $82
; しつのいい カーテンだ。[END]
Text13Message48:
    INCBIN "../../res/text/JP/banks/13.bin", $f4c, $d
; さくらの きで つくられた おおきなつくえだ。 / ひきだしが ついている。[END]
Text13Message49:
    INCBIN "../../res/text/JP/banks/13.bin", $f59, $25
; マロンは このなかに たいせつな / しょるいを いれておくのだろう。[END]
Text13Message4A:
    INCBIN "../../res/text/JP/banks/13.bin", $f7e, $22
; ・・・そうだ![PAGE] / ひきだしの なかに べンティーニの / あくじを うらづける しょうこを / いれておけば マロンは きっと / それに きづくに ちがいない![END]
Text13Message4B:
    INCBIN "../../res/text/JP/banks/13.bin", $fa0, $4b
; レンガづくりの ホテルの まえだ。[END]
Text13Message4C:
    INCBIN "../../res/text/JP/banks/13.bin", $feb, $12
; おおきな ヤシの きだ。[END]
Text13Message4D:
    INCBIN "../../res/text/JP/banks/13.bin", $ffd, $e
; ヤシの きだ。 / ・・・かたそうな みきだな・・・。[END]
Text13Message4E:
    INCBIN "../../res/text/JP/banks/13.bin", $100b, $1a
; 「ラッキーダイスホテル & カジノ」と おおきな ぎんの もじで / かいてある ひよけだ。[END]
Text13Message4F:
    INCBIN "../../res/text/JP/banks/13.bin", $1025, $2d
; すなの だいちが はてしなく / ひろがっている・・・。[END]
Text13Message50:
    INCBIN "../../res/text/JP/banks/13.bin", $1052, $1b
; あけなければ いどうできない。[END]
Text13Message51:
    INCBIN "../../res/text/JP/banks/13.bin", $106d, $2
jr_013_506f:
    INCBIN "../../res/text/JP/banks/13.bin", $106f, $e
; とおりが つづいている。[END]
Text13Message52:
    INCBIN "../../res/text/JP/banks/13.bin", $107d, $d
; うーん・・・。 / あかない・・・。[END]
Text13Message53:
    INCBIN "../../res/text/JP/banks/13.bin", $108a, $11
; カラカラに かわいた さばくだ。[END]
Text13Message54:
    INCBIN "../../res/text/JP/banks/13.bin", $109b, $11
; ・・・そうだ!![PAGE] / この シガーリングを ひみつの / オフィスの つくえの うえに / おいておけば・・・。[PAGE] / べンティーニは じぶんの けいかくがマロンに しられたと / おもうのではな...
Text13Message55:
    INCBIN "../../res/text/JP/banks/13.bin", $10ac, $5e
; カギが かかっているようだ。[END]
Text13Message56:
    INCBIN "../../res/text/JP/banks/13.bin", $110a, $f
; ・・・さすが マフィアの / ころしやだ![PAGE] / ストージーは いっぱつで おれを / しとめた![END]
Text13Message57:
    INCBIN "../../res/text/JP/banks/13.bin", $1119, $2b
; たいようが ジリジリと ようしゃなくてりつける・・・。[PAGE] / ひかげを さがしたが みつからない。・・・あせが たきのように / ながれおちる・・・。[END]
Text13Message58:
    INCBIN "../../res/text/JP/banks/13.bin", $1144, $47
; ひよけも ない・・・。 / みずも ない・・・。[PAGE] / きもちばかりが あせって からだは / つかれるばかりだ・・・。[PAGE] / ・・・くるしい・・・。[END]
Text13Message59:
    INCBIN "../../res/text/JP/banks/13.bin", $118b, $42
; ちかくを パトロールしていた / けいかんが やってきた。[PAGE] / 「おい! /  そんな かっこうで いるなんて /  あたまが おかしいんじゃないのか?[PAGE] /  ちょっと しょまで いっしょに /...
Text13Message5A:
    INCBIN "../../res/text/JP/banks/13.bin", $11cd, $77
; ・・・もう たいりょくも / げんかいだ・・・。[PAGE] / ハゲタカの エサになるのも じかんのもんだいのようだ・・・。[END]
Text13Message5B:
    INCBIN "../../res/text/JP/banks/13.bin", $1244, $36
; なんて おれは うんが いいんだ! / すぐ そこに ばいてんが![PAGE] / フラフラと すいよせられるように / あるきながら おれは つぶやいた。[PAGE] / 「・・・みずを くれ・・・。」[END]
Text13Message5C:
    INCBIN "../../res/text/JP/banks/13.bin", $127a, $53
; ああ・・・っ! / そんな・・・。[END]
Text13Message5D:
    INCBIN "../../res/text/JP/banks/13.bin", $12cd, $10
; ばいてんは おれの よくぼうがみせたまぼろしだったようだ・・・。[PAGE] / あんな まぼろしを みるとは・・・。しが ちかづいているのか?[END]
Text13Message5E:
    INCBIN "../../res/text/JP/banks/13.bin", $12dd, $31
jr_013_530e:
    INCBIN "../../res/text/JP/banks/13.bin", $130e, $10
; ああ・・・! / もう いっぽも うごけない・・・。[PAGE] / こうしているあいだも おれの / たいないの すいぶんは どんどん / じょうはつしている・・・。[PAGE] / しぬまえに・・・ひとくちで いい...
Text13Message5F:
    INCBIN "../../res/text/JP/banks/13.bin", $131e, $68
; するどい トゲのある サボテンだ。 / さわると いたそうだな・・・。[END]
Text13Message60:
    INCBIN "../../res/text/JP/banks/13.bin", $1386, $22
; ・・・とれない。[END]
Text13Message61:
    INCBIN "../../res/text/JP/banks/13.bin", $13a8, $9
; こんなに あつくて かんそうして / いるのに この きは りっぱに / せいちょうしているようだ。[END]
Text13Message62:
    INCBIN "../../res/text/JP/banks/13.bin", $13b1, $2f
; ・・・へんじがない。[END]
Text13Message63:
    INCBIN "../../res/text/JP/banks/13.bin", $13e0, $b
; たいようの ひに やけた いわだ。 / このうえに なまタマゴを おとすと / めだまやきが つくれそうだな・・・。[END]
Text13Message64:
    INCBIN "../../res/text/JP/banks/13.bin", $13eb, $37
; もちもので ないものは / すてられない。[END]
Text13Message65:
    INCBIN "../../res/text/JP/banks/13.bin", $1422, $14
; さばくの じゅうにんに きれいに / ついばまれた どうぶつの ホネだ。[END]
Text13Message66:
    INCBIN "../../res/text/JP/banks/13.bin", $1436, $23
; この くさは たんけんのような / かたちをしている。[END]
Text13Message67:
    INCBIN "../../res/text/JP/banks/13.bin", $1459, $1a
; せんたくものいれの ふただ。[END]
Text13Message68:
    INCBIN "../../res/text/JP/banks/13.bin", $1473, $f
; こんな みずのない だいちに / ねづくなんて サボテンって / ものずきなんだな・・・。[END]
Text13Message69:
    INCBIN "../../res/text/JP/banks/13.bin", $1482, $1d
jr_013_549f:
    INCBIN "../../res/text/JP/banks/13.bin", $149f, $d
; まちはずれにある クリーニングてんのまえだ。[END]
Text13Message6A:
    INCBIN "../../res/text/JP/banks/13.bin", $14ac, $9
jr_013_54b5:
    INCBIN "../../res/text/JP/banks/13.bin", $14b5, $e
; 「リライアント・クリーニングてん」とかいてある かんばんだ。[END]
Text13Message6B:
    INCBIN "../../res/text/JP/banks/13.bin", $14c3, $19
jr_013_54dc:
    INCBIN "../../res/text/JP/banks/13.bin", $14dc, $6
; マドガラスには / 「リライアント・クリーニングてん」とみせの なまえが はいっている。[END]
Text13Message6C:
    INCBIN "../../res/text/JP/banks/13.bin", $14e2, $2b
; ねずみいろの シャッターだ。 / クリーニングてんには あまり / につかわしくない いろだなあ・・・。[END]
Text13Message6D:
    INCBIN "../../res/text/JP/banks/13.bin", $150d, $31
; 「うっさいわねっ!」[PAGE] / ビシッ!!!!![PAGE] / おんなは おれの ほっぺたを / おもいっきり ひっぱたいた![PAGE] / くおーっ・・・! / ・・・ッいってえ・・・。[END]
Text13Message6E:
    INCBIN "../../res/text/JP/banks/13.bin", $153e, $48
; 「おい! /  ちょっとまて![PAGE] /  おまえ そんな かっこうで ここを あるきまわるつもりか?[PAGE] /  この おれの めの くろいうちは /  そんなことは ゆるさん![PAGE] /  きちん...
Text13Message6F:
    INCBIN "../../res/text/JP/banks/13.bin", $1586, $66
; ひろい さばくが つづいている。[END]
Text13Message70:
    INCBIN "../../res/text/JP/banks/13.bin", $15ec, $11
; ラスべガスえきの まえだ。 / おおきな たてものだな・・・。[END]
Text13Message71:
    INCBIN "../../res/text/JP/banks/13.bin", $15fd, $1e
; アーチがたの マドだ。[END]
Text13Message72:
    INCBIN "../../res/text/JP/banks/13.bin", $161b, $9
jr_013_5624:
    INCBIN "../../res/text/JP/banks/13.bin", $1624, $3
; エレべータの ドアが あくと / いきなり ようじんぼうが / はいってきた。[PAGE] / 「おまえ・・・!! /  この マグネットボタンを どこで /  てに いれたんだ?![PAGE] /  4かいの ひみつ...
Text13Message73:
    INCBIN "../../res/text/JP/banks/13.bin", $1627, $8b
; 「ラスべガスえき」と かいてある / かんばんだ。[END]
Text13Message74:
    INCBIN "../../res/text/JP/banks/13.bin", $16b2, $18
; チップは 1まい 5ドルだ。[END]
Text13Message75:
    INCBIN "../../res/text/JP/banks/13.bin", $16ca, $f
; ラスべガスえきの ロビーだ。[PAGE] / れっしゃの きてきや いききする / ひとたちの ざわめきで さわがしい。[END]
Text13Message76:
    INCBIN "../../res/text/JP/banks/13.bin", $16d9, $33
; かなり つかいふるされた べンチだ。[END]
Text13Message77:
    INCBIN "../../res/text/JP/banks/13.bin", $170c, $13
; みぎむきの やじるしがあり / 「にもつあずかりしょ」と / かかれている。[END]
Text13Message78:
    INCBIN "../../res/text/JP/banks/13.bin", $171f, $23
; イキな かっこうを した おとこが / しんぶんを よんでいる。[PAGE] / どうにも なんだか うさんくさい / おとこだな・・・。[END]
Text13Message79:
    INCBIN "../../res/text/JP/banks/13.bin", $1742, $3a
; こっちは にもつあずかりしょだ。[END]
Text13Message7A:
    INCBIN "../../res/text/JP/banks/13.bin", $177c, $11
; きまった!! / おれの ひだりフックが おとこの / みぎアゴに さくれつした![END]
Text13Message7B:
    INCBIN "../../res/text/JP/banks/13.bin", $178d, $1c
jr_013_57a9:
    INCBIN "../../res/text/JP/banks/13.bin", $17a9, $a
; だが ここは ボクシングの / リングではない・・・。[PAGE] / さわぎを ききつけて けいかんが / やってきた。[PAGE] / そして おれは そのばで / たいほされてしまった・・・。[END]
Text13Message7C:
    INCBIN "../../res/text/JP/banks/13.bin", $17b3, $4e
; ふこうなことに おれに あたえられた1しゅうかんという きげんは / けいさつに いるあいだに / すぎてしまった・・・。[PAGE] / ストージーが ほしゃくきんを / つんでくれたおかげで おれは / しゃくほう...
Text13Message7D:
    INCBIN "../../res/text/JP/banks/13.bin", $1801, $27
jr_013_5828:
    INCBIN "../../res/text/JP/banks/13.bin", $1828, $3e
; ストージーは いった・・・。[PAGE] / 「よかったな・・・。 /  これは しゅっしょいわいだ。 /  うけとってくれ!」[PAGE] / そして おれの どてっぱらめがけて / ピストルを うった・・・。[END]
Text13Message7E:
    INCBIN "../../res/text/JP/banks/13.bin", $1866, $55
; おれは おとこに あいさつした。[PAGE] / すると そのおとこは ヒソヒソと / はなしはじめた。[PAGE] / 「おまえさん よそものだね・・・。 /  いいことを おしえといてやろう。[PAGE] /  こ...
Text13Message7F:
    INCBIN "../../res/text/JP/banks/13.bin", $18bb, $822
Jump_013_60dd:
    INCBIN "../../res/text/JP/banks/13.bin", $20dd, $1ed3
Call_013_7fb0:
    INCBIN "../../res/text/JP/banks/13.bin", $3fb0, $30
Jump_013_7fe0:
    INCBIN "../../res/text/JP/banks/13.bin", $3fe0, $9
Call_013_7fe9:
    INCBIN "../../res/text/JP/banks/13.bin", $3fe9, $1
Call_013_7fea:
    INCBIN "../../res/text/JP/banks/13.bin", $3fea, $16
