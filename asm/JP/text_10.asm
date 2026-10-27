; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text10Msgs0:
    db LOW(Text10Message00), HIGH(Text10Message00)
    db LOW(Text10Message01), HIGH(Text10Message01)
    db LOW(Text10Message02), HIGH(Text10Message02)
    db LOW(Text10Message03), HIGH(Text10Message03)
    db LOW(Text10Message04), HIGH(Text10Message04)
    db LOW(Text10Message05), HIGH(Text10Message05)
    db LOW(Text10Message06), HIGH(Text10Message06)
    db LOW(Text10Message07), HIGH(Text10Message07)
    db LOW(Text10Message08), HIGH(Text10Message08)
    db LOW(Text10Message09), HIGH(Text10Message09)
    db LOW(Text10Message0A), HIGH(Text10Message0A)
    db LOW(Text10Message0B), HIGH(Text10Message0B)
    db LOW(Text10Message0C), HIGH(Text10Message0C)
    db LOW(Text10Message0D), HIGH(Text10Message0D)
    db LOW(Text10Message0D), HIGH(Text10Message0D)
    db LOW(Text10Message0F), HIGH(Text10Message0F)
    db LOW(Text10Message10), HIGH(Text10Message10)
    db LOW(Text10Message11), HIGH(Text10Message11)
    db LOW(Text10Message12), HIGH(Text10Message12)
    db LOW(Text10Message13), HIGH(Text10Message13)
    db LOW(Text10Message13), HIGH(Text10Message13)
    db LOW(Text10Message13), HIGH(Text10Message13)
    db LOW(Text10Message16), HIGH(Text10Message16)
    db LOW(Text10Message17), HIGH(Text10Message17)
    db LOW(Text10Message18), HIGH(Text10Message18)
    db LOW(Text10Message19), HIGH(Text10Message19)
    db LOW(Text10Message1A), HIGH(Text10Message1A)
    db LOW(Text10Message1B), HIGH(Text10Message1B)
    db LOW(Text10Message1C), HIGH(Text10Message1C)
    db LOW(Text10Message1D), HIGH(Text10Message1D)
    db LOW(Text10Message1E), HIGH(Text10Message1E)
    db LOW(Text10Message1F), HIGH(Text10Message1F)
    db LOW(Text10Message1F), HIGH(Text10Message1F)
    db LOW(Text10Message21), HIGH(Text10Message21)
    db LOW(Text10Message22), HIGH(Text10Message22)
    db LOW(Text10Message23), HIGH(Text10Message23)
    db LOW(Text10Message24)
jr_010_4049:
    db HIGH(Text10Message24)
    db LOW(Text10Message25), HIGH(Text10Message25)
    db LOW(Text10Message26), HIGH(Text10Message26)
    db LOW(Text10Message27), HIGH(Text10Message27)
    db LOW(Text10Message28), HIGH(Text10Message28)
    db LOW(Text10Message29), HIGH(Text10Message29)
    db LOW(Text10Message2A), HIGH(Text10Message2A)
    db LOW(Text10Message2B), HIGH(Text10Message2B)
    db LOW(Text10Message2C), HIGH(Text10Message2C)
    db LOW(Text10Message2D), HIGH(Text10Message2D)
    db LOW(Text10Message2D), HIGH(Text10Message2D)
    db LOW(Text10Message2D), HIGH(Text10Message2D)
    db LOW(Text10Message2D), HIGH(Text10Message2D)
    db LOW(Text10Message31), HIGH(Text10Message31)
    db LOW(Text10Message32), HIGH(Text10Message32)
    db LOW(Text10Message33), HIGH(Text10Message33)
    db LOW(Text10Message34), HIGH(Text10Message34)
    db LOW(Text10Message35), HIGH(Text10Message35)
    db LOW(Text10Message36), HIGH(Text10Message36)
    db LOW(Text10Message37), HIGH(Text10Message37)
    db LOW(Text10Message38), HIGH(Text10Message38)
    db LOW(Text10Message39), HIGH(Text10Message39)
    db LOW(Text10Message39), HIGH(Text10Message39)
    db LOW(Text10Message3B), HIGH(Text10Message3B)
    db LOW(Text10Message3C), HIGH(Text10Message3C)
    db LOW(Text10Message3D)
jr_010_407b:
    db HIGH(Text10Message3D)
    db LOW(Text10Message3E), HIGH(Text10Message3E)
    db LOW(Text10Message3F), HIGH(Text10Message3F)
; Sixty-four message pointers for one text group.
Text10Msgs1:
    db LOW(Text10Message40), HIGH(Text10Message40)
    db LOW(Text10Message41), HIGH(Text10Message41)
    db LOW(Text10Message42), HIGH(Text10Message42)
    db LOW(Text10Message43), HIGH(Text10Message43)
    db LOW(Text10Message44), HIGH(Text10Message44)
    db LOW(Text10Message45), HIGH(Text10Message45)
    db LOW(Text10Message46), HIGH(Text10Message46)
    db LOW(Text10Message47), HIGH(Text10Message47)
    db LOW(Text10Message48), HIGH(Text10Message48)
    db LOW(Text10Message49), HIGH(Text10Message49)
    db LOW(Text10Message49), HIGH(Text10Message49)
    db LOW(Text10Message4B), HIGH(Text10Message4B)
    db LOW(Text10Message4C), HIGH(Text10Message4C)
    db LOW(Text10Message4D), HIGH(Text10Message4D)
    db LOW(Text10Message4E), HIGH(Text10Message4E)
    db LOW(Text10Message4F), HIGH(Text10Message4F)
    db LOW(Text10Message50), HIGH(Text10Message50)
    db LOW(Text10Message51), HIGH(Text10Message51)
    db LOW(Text10Message52), HIGH(Text10Message52)
    db LOW(Text10Message53), HIGH(Text10Message53)
    db LOW(Text10Message54), HIGH(Text10Message54)
    db LOW(Text10Message54), HIGH(Text10Message54)
    db LOW(Text10Message56), HIGH(Text10Message56)
    db LOW(Text10Message57), HIGH(Text10Message57)
    db LOW(Text10Message58), HIGH(Text10Message58)
    db LOW(Text10Message59), HIGH(Text10Message59)
    db LOW(Text10Message5A), HIGH(Text10Message5A)
    db LOW(Text10Message5B), HIGH(Text10Message5B)
    db LOW(Text10Message5C), HIGH(Text10Message5C)
    db LOW(Text10Message5D), HIGH(Text10Message5D)
    db LOW(Text10Message5E), HIGH(Text10Message5E)
    db LOW(Text10Message5F), HIGH(Text10Message5F)
    db LOW(Text10Message60), HIGH(Text10Message60)
    db LOW(Text10Message61), HIGH(Text10Message61)
    db LOW(Text10Message62), HIGH(Text10Message62)
    db LOW(Text10Message63), HIGH(Text10Message63)
    db LOW(Text10Message64), HIGH(Text10Message64)
    db LOW(Text10Message65), HIGH(Text10Message65)
    db LOW(Text10Message66), HIGH(Text10Message66)
    db LOW(Text10Message67), HIGH(Text10Message67)
    db LOW(Text10Message68)
jr_010_40d1:
    db HIGH(Text10Message68)
    db LOW(Text10Message69), HIGH(Text10Message69)
    db LOW(Text10Message6A), HIGH(Text10Message6A)
    db LOW(Text10Message6B), HIGH(Text10Message6B)
    db LOW(Text10Message6C), HIGH(Text10Message6C)
    db LOW(Text10Message6D), HIGH(Text10Message6D)
    db LOW(Text10Message6E), HIGH(Text10Message6E)
    db LOW(Text10Message6F), HIGH(Text10Message6F)
    db LOW(Text10Message70), HIGH(Text10Message70)
    db LOW(Text10Message71), HIGH(Text10Message71)
    db LOW(Text10Message72), HIGH(Text10Message72)
    db LOW(Text10Message73), HIGH(Text10Message73)
    db LOW(Text10Message74), HIGH(Text10Message74)
    db LOW(Text10Message74), HIGH(Text10Message74)
    db LOW(Text10Message76), HIGH(Text10Message76)
    db LOW(Text10Message77), HIGH(Text10Message77)
    db LOW(Text10Message78), HIGH(Text10Message78)
    db LOW(Text10Message79), HIGH(Text10Message79)
    db LOW(Text10Message7A), HIGH(Text10Message7A)
    db LOW(Text10Message7B), HIGH(Text10Message7B)
    db LOW(Text10Message7C), HIGH(Text10Message7C)
    db LOW(Text10Message7D), HIGH(Text10Message7D)
    db LOW(Text10Message7E), HIGH(Text10Message7E)
    db LOW(Text10Message7F), HIGH(Text10Message7F)
; [OBJECT_WRAM:37C5]を あけた。[END]
Text10Message00:
    INCBIN "../../res/text/JP/banks/10.bin", $100, $1
    db LOW(wTextName0)
jr_010_4102:
    db HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $103, $7
; [OBJECT_WRAM:37C5]は あいている。[END]
Text10Message01:
    INCBIN "../../res/text/JP/banks/10.bin", $10a, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $10d, $7
jr_010_4114:
    INCBIN "../../res/text/JP/banks/10.bin", $114, $2
jr_010_4116:
; [OBJECT_WRAM:37C5]を しめた。[END]
Text10Message02:
    INCBIN "../../res/text/JP/banks/10.bin", $116, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $119, $7
; [OBJECT_WRAM:37C5]は しまっている。[END]
Text10Message03:
    INCBIN "../../res/text/JP/banks/10.bin", $120, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $123, $a
; [OBJECT_WRAM:37C5]を とった。[END]
Text10Message04:
    INCBIN "../../res/text/JP/banks/10.bin", $12d, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $130, $7
; [OBJECT_WRAM:37C5]を すてた。[END]
Text10Message05:
    INCBIN "../../res/text/JP/banks/10.bin", $137, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $13a, $7
; [OBJECT_WRAM:37C5]を / ちゅうしゃきに いれた。[END]
Text10Message06:
    INCBIN "../../res/text/JP/banks/10.bin", $141, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $144, $f
; [OBJECT_WRAM:37C5]の クスリビンだ。 / なかみは はいっていない。[END]
Text10Message07:
    INCBIN "../../res/text/JP/banks/10.bin", $153, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $156, $18
; [OBJECT_WRAM:37C5]の クスリビンだ。[END]
Text10Message08:
    INCBIN "../../res/text/JP/banks/10.bin", $16e, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $171, $a
; ちゅうしゃきだ。 / なかに [OBJECT_WRAM:37C5]が / はいっている。[END]
Text10Message09:
    INCBIN "../../res/text/JP/banks/10.bin", $17b, $e
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $18b, $a
; [OBJECT_WRAM:37C5]を あけた。 / なかは カラッポだ。[END]
Text10Message0A:
    INCBIN "../../res/text/JP/banks/10.bin", $195, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $198, $12
; ぺオリアどおりだ。 / [OBJECT_WRAM:37C5]が とまっている。[END]
Text10Message0B:
    INCBIN "../../res/text/JP/banks/10.bin", $1aa, $b
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $1b7, $a
; [OBJECT_WRAM:37C5]だ。 / うんてんしゅが のっている。 / きゃくを まっているようだ。[END]
Text10Message0C:
    INCBIN "../../res/text/JP/banks/10.bin", $1c1, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $1c4, $21
; ・・・・なにも おこらない・・・? / どうやら かのじょには めんえきが / あって クスリが きかないらしい。[END]
Text10Message0D:
    INCBIN "../../res/text/JP/banks/10.bin", $1e5, $36
; [OBJECT_WRAM:37C5]を すてた。 / あっというまに ふかく しずんで / みえなくなった。[END]
Text10Message0F:
    INCBIN "../../res/text/JP/banks/10.bin", $21b, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $21e, $21
; [OBJECT_WRAM:37C5]に ライターで / ひを つけた・・・。[PAGE] / いきおいよく もえて はいに / なってしまった・・・。[END]
Text10Message10:
    INCBIN "../../res/text/JP/banks/10.bin", $23f, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $242, $19
jr_010_425b:
    INCBIN "../../res/text/JP/banks/10.bin", $25b, $8
jr_010_4263:
    INCBIN "../../res/text/JP/banks/10.bin", $263, $d
; カギが こわれて [OBJECT_WRAM:37C5]が / あいた。[END]
Text10Message11:
    INCBIN "../../res/text/JP/banks/10.bin", $270, $4
jr_010_4274:
    INCBIN "../../res/text/JP/banks/10.bin", $274, $6
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $27c, $7
; ・・・カチッ![PAGE] / [OBJECT_WRAM:37C5]の カギを[OBJECT_WRAM:38C5][END]
Text10Message12:
    INCBIN "../../res/text/JP/banks/10.bin", $283, $4
jr_010_4287:
    INCBIN "../../res/text/JP/banks/10.bin", $287, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $28e, $6
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/10.bin", $296, $1
; コイン [NUM8_WRAM:38C5]まいを とった。[END]
Text10Message13:
    INCBIN "../../res/text/JP/banks/10.bin", $297, $5
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/10.bin", $29e, $9
; だんがん [NUM8_WRAM:38C5]こを とった。[END]
Text10Message16:
    INCBIN "../../res/text/JP/banks/10.bin", $2a7, $6
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/10.bin", $2af, $8
; ・・・ぜんぶで [NUM8_WRAM:38C5]まいだ。[END]
Text10Message17:
    INCBIN "../../res/text/JP/banks/10.bin", $2b7, $9
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/10.bin", $2c2, $5
; ・・・カチャ カチャ カチャ・・・ / チーン!!![PAGE] / やったぜ!!! / ジャックポットだ! / おおあたりだ!!![PAGE] / ぜんぶで [NUM8_WRAM:38C5]まいだ。[END]
Text10Message18:
    INCBIN "../../res/text/JP/banks/10.bin", $2c7, $2
jr_010_42c9:
    INCBIN "../../res/text/JP/banks/10.bin", $2c9, $39
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/10.bin", $304, $5
; [OBJECT_WRAM:37C5]を ちゅうしゃした。[END]
Text10Message19:
    INCBIN "../../res/text/JP/banks/10.bin", $309, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $30c, $b
; ありがとう ございます。 / [OBJECT_WRAM:37C5] いただきます。[END]
Text10Message1A:
    INCBIN "../../res/text/JP/banks/10.bin", $317, $e
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/10.bin", $327, $9
; だんがん [NUM8_WRAM:5CC5]こを とった。[END]
Text10Message1B:
    INCBIN "../../res/text/JP/banks/10.bin", $330, $6
    db LOW(wGun1Ammo), HIGH(wGun1Ammo)
    INCBIN "../../res/text/JP/banks/10.bin", $338, $8
; だんがん [NUM8_WRAM:5DC5]こを とった。[END]
Text10Message1C:
    INCBIN "../../res/text/JP/banks/10.bin", $340, $6
    db LOW(wGun2Ammo), HIGH(wGun2Ammo)
    INCBIN "../../res/text/JP/banks/10.bin", $348, $8
; だんがん [NUM8_WRAM:5EC5]こを とった。[END]
Text10Message1D:
    INCBIN "../../res/text/JP/banks/10.bin", $350, $6
    db LOW(wGun3Ammo), HIGH(wGun3Ammo)
    INCBIN "../../res/text/JP/banks/10.bin", $358, $8
; だんがん [NUM8_WRAM:60C5]こを とった。[END]
Text10Message1E:
    INCBIN "../../res/text/JP/banks/10.bin", $360, $6
    db LOW(wC1AmmoQty), HIGH(wC1AmmoQty)
    INCBIN "../../res/text/JP/banks/10.bin", $368, $8
; ・・・コインが たりないようだ。[END]
Text10Message1F:
    INCBIN "../../res/text/JP/banks/10.bin", $370, $11
; かなりの デブだ。 / 100キロは ありそうだな。[PAGE] / ・・・まったく みおぼえのない / じょせいだ。[END]
Text10Message21:
    INCBIN "../../res/text/JP/banks/10.bin", $381, $30
; クスリを ビンの なかに もどした。[END]
Text10Message22:
    INCBIN "../../res/text/JP/banks/10.bin", $3b1, $13
; ちゅうしゃきの なかは カラだぞ![END]
Text10Message23:
    INCBIN "../../res/text/JP/banks/10.bin", $3c4, $12
; マンションの カードキーだ。[END]
Text10Message24:
    INCBIN "../../res/text/JP/banks/10.bin", $3d6, $f
; おとこだ! / じゅうこうを おれに むけている![END]
Text10Message25:
    INCBIN "../../res/text/JP/banks/10.bin", $3e5, $18
; ガンショップの なかだ。[END]
Text10Message26:
    INCBIN "../../res/text/JP/banks/10.bin", $3fd, $d
; マンションの へやの なかだ。[END]
Text10Message27:
    INCBIN "../../res/text/JP/banks/10.bin", $40a, $10
; ・・・と いうことは・・・? / ここは おれの オフィスなのか![END]
Text10Message28:
    INCBIN "../../res/text/JP/banks/10.bin", $41a, $20
; ないものは すてられない![END]
Text10Message29:
    INCBIN "../../res/text/JP/banks/10.bin", $43a, $e
; とってないものは もやせない![END]
Text10Message2A:
    INCBIN "../../res/text/JP/banks/10.bin", $448, $10
; ひょうじスピード せんたく /     はやい /     ふつう /     おそい[END]
Text10Message2B:
    INCBIN "../../res/text/JP/banks/10.bin", $458, $26
; ひらやの たてものだ。[END]
Text10Message2C:
    INCBIN "../../res/text/JP/banks/10.bin", $47e, $c
; ・・・ツー ツー ツー・・・。 / ・・・きれている。[END]
Text10Message2D:
    INCBIN "../../res/text/JP/banks/10.bin", $48a, $1a
; べンツの トランクの キーだ。[END]
Text10Message31:
    INCBIN "../../res/text/JP/banks/10.bin", $4a4, $10
; トランクの なかの じょせいだ。[END]
Text10Message32:
    INCBIN "../../res/text/JP/banks/10.bin", $4b4, $11
; りょうきんメーターだ。 / ここに りょうきんが ひょうじ / されるんだな。[END]
Text10Message33:
    INCBIN "../../res/text/JP/banks/10.bin", $4c5, $18
Jump_010_44dd:
    INCBIN "../../res/text/JP/banks/10.bin", $4dd, $c
; うんてんしゅを たたこうとしたが / うんてんせきとの さかいにある / ぼうだんガラスを たたいてしまった![END]
Text10Message34:
    INCBIN "../../res/text/JP/banks/10.bin", $4e9, $34
; しつじは めいわくそうに いった。[PAGE] / 「おはなしする ことは なにも /  ございません。 /  どうぞ おひきとり ください。」[END]
Text10Message35:
    INCBIN "../../res/text/JP/banks/10.bin", $51d, $3d
; じゅくすいしているのか / いくらたたいても めを さまさない。[END]
Text10Message36:
    INCBIN "../../res/text/JP/banks/10.bin", $55a, $1f
; なにを しているんだ おれは?![END]
Text10Message37:
    INCBIN "../../res/text/JP/banks/10.bin", $579, $11
; それは ひだりがわの ドアから / ながれでた もののようだ。[PAGE] / ・・・イヤな よかんがする・・・。[END]
Text10Message38:
    INCBIN "../../res/text/JP/banks/10.bin", $58a, $30
; うんてんしゅは おこって いった。[PAGE] / 「やいやい!! /  おめえ まえに のりにげした /  やろうだな!![PAGE] /  こちとら あくとうは のせねえ /  しゅぎなんでえっ! /  さあ とっ...
Text10Message39:
    INCBIN "../../res/text/JP/banks/10.bin", $5ba, $61
; くろくて おおきな キャビネットだ。[END]
Text10Message3B:
    INCBIN "../../res/text/JP/banks/10.bin", $61b, $13
; こんなもの たたいて どうするんだ![END]
Text10Message3C:
    INCBIN "../../res/text/JP/banks/10.bin", $62e, $13
; うーん・・・。 / だんだん この じけんの ぜんようがみえてきた。[END]
Text10Message3D:
    INCBIN "../../res/text/JP/banks/10.bin", $641, $21
; かくしドアを あけるための ワインのビンだ。[END]
Text10Message3E:
    INCBIN "../../res/text/JP/banks/10.bin", $662, $17
; ・・・・・・!![PAGE] / ビンだなが スライドして つうろが / あらわれた。[END]
Text10Message3F:
    INCBIN "../../res/text/JP/banks/10.bin", $679, $22
; おそらく カードか なにかを / さしこむのだろう・・・。[END]
Text10Message40:
    INCBIN "../../res/text/JP/banks/10.bin", $69b, $1c
; スーッ。 / ドアが しまった。[PAGE] / エレべータは しずかに うごいた。[PAGE] / ・・・・・・。 / どこへ つれてゆかれるのだろう?[END]
Text10Message41:
    INCBIN "../../res/text/JP/banks/10.bin", $6b7, $3a
; スーッ。 / やがて エレべータは とまり / ドアが ひらいた。[END]
Text10Message42:
    INCBIN "../../res/text/JP/banks/10.bin", $6f1, $1e
; スーッ。 / ドアが しまった。[PAGE] / エレべータは しずかに うごいた。[END]
Text10Message43:
    INCBIN "../../res/text/JP/banks/10.bin", $70f, $21
; しゃしんだ。 / ここに うつっているのは べッドの / なかにいた おんなだ![END]
Text10Message44:
    INCBIN "../../res/text/JP/banks/10.bin", $730, $25
; カギが かかっている。[END]
Text10Message45:
    INCBIN "../../res/text/JP/banks/10.bin", $755, $c
; クスリの なまえと その こうのうがしるして ある。[PAGE] / 「オフレール ー /  ・・・・・・・・・。」[PAGE] / 「メドレジン ー /  しんけい マヒの クスリ。」[PAGE] / 「ダイサノール...
Text10Message46:
    INCBIN "../../res/text/JP/banks/10.bin", $761, $fb
; おとこだ。 / よく ねむっている。[END]
Text10Message47:
    INCBIN "../../res/text/JP/banks/10.bin", $85c, $11
; とってないものは つかえない。[END]
Text10Message48:
    INCBIN "../../res/text/JP/banks/10.bin", $86d, $10
; いっぷくすれば すこしは きが / はれるだろうか?[END]
Text10Message49:
    INCBIN "../../res/text/JP/banks/10.bin", $87d, $19
; ・・・・・・・・・・・・。[PAGE] / いっこうに きぶんは はれない。[END]
Text10Message4B:
    INCBIN "../../res/text/JP/banks/10.bin", $896, $1f
; いっこうに きぶんは はれない。[END]
Text10Message4C:
    INCBIN "../../res/text/JP/banks/10.bin", $8b5, $11
; かわった かたちの イスだ。 / なんだか きみが わるいな・・・。[END]
Text10Message4D:
    INCBIN "../../res/text/JP/banks/10.bin", $8c6, $21
; ・・・イスのようなものが みえる。[END]
Text10Message4E:
    INCBIN "../../res/text/JP/banks/10.bin", $8e7, $12
; トランク いっぱいに ものが / つまっている。[PAGE] / こっ これは・・・!!![END]
Text10Message4F:
    INCBIN "../../res/text/JP/banks/10.bin", $8f9, $24
; ・・・いや。 / いま ここで これを もやすのは / やめておこう![END]
Text10Message50:
    INCBIN "../../res/text/JP/banks/10.bin", $91d, $20
; ブレーキだ。[END]
Text10Message51:
    INCBIN "../../res/text/JP/banks/10.bin", $93d, $7
; てに とっていない ものは / つかえない。[END]
Text10Message52:
    INCBIN "../../res/text/JP/banks/10.bin", $944, $15
; チョコレートを つまんで くちまで / はこんだ・・・![PAGE] / うっ・・・・・・。[PAGE] / ・・・まずい!!! / こんな あまいものが なぜ / たべられるのだろうか?[END]
Text10Message53:
    INCBIN "../../res/text/JP/banks/10.bin", $959, $49
; どこに すてようか?[END]
Text10Message54:
    INCBIN "../../res/text/JP/banks/10.bin", $9a2, $b
; とっていない ものを すてることは / できない![END]
Text10Message56:
    INCBIN "../../res/text/JP/banks/10.bin", $9ad, $18
; どうやら ここには すてられない / ようだ。[END]
Text10Message57:
    INCBIN "../../res/text/JP/banks/10.bin", $9c5, $16
; もとの ところに もどした。[END]
Text10Message58:
    INCBIN "../../res/text/JP/banks/10.bin", $9db, $f
; ・・・・・・。 / だいぶ らくになった。 / ずつうは おさまったようだ。[END]
Text10Message59:
    INCBIN "../../res/text/JP/banks/10.bin", $9ea, $23
; いっ・・・いしきが・・・。 / うす・れ・・て・・・い・・・・く・・・・・・・・・・・。[END]
Text10Message5A:
    INCBIN "../../res/text/JP/banks/10.bin", $a0d, $2b
; あなたは トイレで めざめてから / ようやく ここまで たどりついた。[PAGE] / だが どうやら あなたの うんも / ここまでだったようだ・・・。[PAGE] / クスリの ききめが おもいのほか / つよか...
Text10Message5B:
    INCBIN "../../res/text/JP/banks/10.bin", $a38, $81
; クラッチだ。[END]
Text10Message5C:
    INCBIN "../../res/text/JP/banks/10.bin", $ab9, $7
; うんてんしゅは こわいかおをして / いった。[PAGE] / 「おきゃくさん!!! /  まだ かねを もらっちゃあ /  いやせんぜ![PAGE] /  このままじゃ けいさつに /  いってもらうことに なりやす...
Text10Message5D:
    INCBIN "../../res/text/JP/banks/10.bin", $ac0, $59
; かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  まだ おかねを いただいて /  いませんよ![PAGE] /  のりにげなんて そんなの /  やめてくださいよ・・・。...
Text10Message5E:
    INCBIN "../../res/text/JP/banks/10.bin", $b19, $57
; あっ・・・! / うけざらの ところに コインが / 1まい おちているぞ![END]
Text10Message5F:
    INCBIN "../../res/text/JP/banks/10.bin", $b70, $23
; おれいがいの なにものでも ない! / おれは おれだ![END]
Text10Message60:
    INCBIN "../../res/text/JP/banks/10.bin", $b93, $1b
; でんわばんごうでは ないらしい。[END]
Text10Message61:
    INCBIN "../../res/text/JP/banks/10.bin", $bae, $11
; あなたは トイレの なかで / めざめてから てさぐりで / ここまできた・・・。[PAGE] / ・・・だが あなたは えいえんに / つちの したで ねむるハメに / なってしまった・・・。[PAGE] / あなた...
Text10Message62:
    INCBIN "../../res/text/JP/banks/10.bin", $bbf, $11
jr_010_4bd0:
    INCBIN "../../res/text/JP/banks/10.bin", $bd0, $58
; あけなければ いどうできない![END]
Text10Message63:
    INCBIN "../../res/text/JP/banks/10.bin", $c28, $10
; そう そう・・・! / コインを いれるんだったな・・・![END]
Text10Message64:
    INCBIN "../../res/text/JP/banks/10.bin", $c38, $1c
; かべが われている・・・。 / それいがい かわったものは / みられない。[END]
Text10Message65:
    INCBIN "../../res/text/JP/banks/10.bin", $c54, $23
; ただの かべの きずの ようだ。[END]
Text10Message66:
    INCBIN "../../res/text/JP/banks/10.bin", $c77, $11
; ウィーン・・・。 / エレべータの ドアが あいた。[END]
Text10Message67:
    INCBIN "../../res/text/JP/banks/10.bin", $c88, $19
; ウィーン・・・。 / エレべータの ドアが しまった。[END]
Text10Message68:
    INCBIN "../../res/text/JP/banks/10.bin", $ca1, $3
Jump_010_4ca4:
    INCBIN "../../res/text/JP/banks/10.bin", $ca4, $17
; おっ・・・と![PAGE] / いきさきを いいたいが / いきたいばしょの アドレスが / わからない![END]
Text10Message69:
    INCBIN "../../res/text/JP/banks/10.bin", $cbb, $2a
; われてしまっている。 / それいがいの へんかは みられない。[END]
Text10Message6A:
    INCBIN "../../res/text/JP/banks/10.bin", $ce5, $1e
; おっ・・・と! / ムダがねを つかうところだった![END]
Text10Message6B:
    INCBIN "../../res/text/JP/banks/10.bin", $d03, $19
; かおを ひきつらせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  かねを もってねえんですかい?[PAGE] /  ・・・しようがねえな! /  こんど きたときで いいぜ!」[END]
Text10Message6C:
    INCBIN "../../res/text/JP/banks/10.bin", $d1c, $52
; うんてんしゅは やさしいこえで / いった。[PAGE] / 「こまったときは おたがいさま! /  おかねは こんど きたときで /  よろしいですよ。」[END]
Text10Message6D:
    INCBIN "../../res/text/JP/banks/10.bin", $d6e, $41
; くちもとを ヒクヒクさせながら / うんてんしゅは いった。[PAGE] / 「おきゃくさん! /  このまえ かした かねを けえして くれねえと こまるぜ!」[END]
Text10Message6E:
    INCBIN "../../res/text/JP/banks/10.bin", $daf, $46
; うんてんしゅは ニコニコして / いった。[PAGE] / 「このまえの おかねを かえして /  くださいね。」[END]
Text10Message6F:
    INCBIN "../../res/text/JP/banks/10.bin", $df5, $2e
; べつに かわったところは ない。[END]
Text10Message70:
    INCBIN "../../res/text/JP/banks/10.bin", $e23, $11
; んっ・・・? / あいているものが おおすぎるようだ。[END]
Text10Message71:
    INCBIN "../../res/text/JP/banks/10.bin", $e34, $1a
; コインが ない・・・。[END]
Text10Message72:
    INCBIN "../../res/text/JP/banks/10.bin", $e4e, $c
; もちものが おおすぎて これいじょうもてそうにない! / なにかを すてなければ ムリだ![END]
Text10Message73:
    INCBIN "../../res/text/JP/banks/10.bin", $e5a, $2c
; ちっ だめか! / どうも ついてないようだ。[END]
Text10Message74:
    INCBIN "../../res/text/JP/banks/10.bin", $e86, $16
; ゴミばこの なかは いっぱいだ。 / これいじょう すてると / あふれてしまう![END]
Text10Message76:
    INCBIN "../../res/text/JP/banks/10.bin", $e9c, $26
; たまが ない・・・。[END]
Text10Message77:
    INCBIN "../../res/text/JP/banks/10.bin", $ec2, $b
; たま2が ない・・・。[END]
Text10Message78:
    INCBIN "../../res/text/JP/banks/10.bin", $ecd, $c
; じぶんに はなしかけるほど おれの / あたまは おかしくなってないぞ![END]
Text10Message79:
    INCBIN "../../res/text/JP/banks/10.bin", $ed9, $23
; ポコ ポコ! / なんで じぶんを たたかなくちゃ / いけないんだ?[END]
Text10Message7A:
    INCBIN "../../res/text/JP/banks/10.bin", $efc, $20
; ちゅうしゃきが カラだったようだ。[END]
Text10Message7B:
    INCBIN "../../res/text/JP/banks/10.bin", $f1c, $12
; ・・・いや。 / ここで やるのは きっと ムダだ! / やめておこう。[END]
Text10Message7C:
    INCBIN "../../res/text/JP/banks/10.bin", $f2e, $21
; まてよ・・・? / これを やると あとで / こまるのでは ないだろうか・・・。[END]
Text10Message7D:
    INCBIN "../../res/text/JP/banks/10.bin", $f4f, $26
; さつじんみすいの ようぎで / たいほされた あなたは けいさつで / とりしらべを うけ さいばんに / かけられた・・・。[END]
Text10Message7E:
    INCBIN "../../res/text/JP/banks/10.bin", $f75, $3a
; さつじんを おかしてしまった / あなたは きびしい とりしらべを / うけた・・・。[PAGE] / ・・・そして さいばんに かけられ / しけいの はんけつを うけた。[PAGE] / ざんねんながら あなたの ...
Text10Message7F:
    INCBIN "../../res/text/JP/banks/10.bin", $faf, $69
; Fixed-width object-name records.
C1ObjectNames:
    INCBIN "../../res/text/JP/banks/10.bin", $1018, $146
jr_010_515e:
    INCBIN "../../res/text/JP/banks/10.bin", $115e, $3
jr_010_5161:
    INCBIN "../../res/text/JP/banks/10.bin", $1161, $d88
Call_010_5ee9:
    INCBIN "../../res/text/JP/banks/10.bin", $1ee9, $cb5
Call_010_6b9e:
    INCBIN "../../res/text/JP/banks/10.bin", $2b9e, $1406
Jump_010_7fa4:
    INCBIN "../../res/text/JP/banks/10.bin", $3fa4, $41
Call_010_7fe5:
    INCBIN "../../res/text/JP/banks/10.bin", $3fe5, $4
Jump_010_7fe9:
    INCBIN "../../res/text/JP/banks/10.bin", $3fe9, $17
