; Disassembly of "Deja Vu I & II - The Casebooks of Ace Harding (Japan).gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

; Encoded text bank, with original label addresses retained.
; Sixty-four message pointers for one text group.
Text18Msgs0:
    db LOW(Text18Message00), HIGH(Text18Message00)
    db LOW(Text18Message01), HIGH(Text18Message01)
    db LOW(Text18Message02), HIGH(Text18Message02)
    db LOW(Text18Message03), HIGH(Text18Message03)
    db LOW(Text18Message04), HIGH(Text18Message04)
    db LOW(Text18Message05), HIGH(Text18Message05)
    db LOW(Text18Message06), HIGH(Text18Message06)
    db LOW(Text18Message07), HIGH(Text18Message07)
    db LOW(Text18Message08), HIGH(Text18Message08)
    db LOW(Text18Message09), HIGH(Text18Message09)
    db LOW(Text18Message0A), HIGH(Text18Message0A)
    db LOW(Text18Message0B), HIGH(Text18Message0B)
    db LOW(Text18Message0C), HIGH(Text18Message0C)
    db LOW(Text18Message0D), HIGH(Text18Message0D)
    db LOW(Text18Message0E), HIGH(Text18Message0E)
    db LOW(Text18Message0F), HIGH(Text18Message0F)
    db LOW(Text18Message10), HIGH(Text18Message10)
    db LOW(Text18Message11), HIGH(Text18Message11)
    db LOW(Text18Message12), HIGH(Text18Message12)
    db LOW(Text18Message13), HIGH(Text18Message13)
    db LOW(Text18Message14), HIGH(Text18Message14)
    db LOW(Text18Message15), HIGH(Text18Message15)
    db LOW(Text18Message16), HIGH(Text18Message16)
    db LOW(Text18Message17), HIGH(Text18Message17)
    db LOW(Text18Message18), HIGH(Text18Message18)
    db LOW(Text18Message19), HIGH(Text18Message19)
    db LOW(Text18Message1A), HIGH(Text18Message1A)
    db LOW(Text18Message1B), HIGH(Text18Message1B)
    db LOW(Text18Message1C), HIGH(Text18Message1C)
    db LOW(Text18Message1D), HIGH(Text18Message1D)
    db LOW(Text18Message1E), HIGH(Text18Message1E)
    db LOW(Text18Message1F), HIGH(Text18Message1F)
    db LOW(Text18Message20), HIGH(Text18Message20)
    db LOW(Text18Message21), HIGH(Text18Message21)
    db LOW(Text18Message22), HIGH(Text18Message22)
    db LOW(Text18Message23), HIGH(Text18Message23)
    db LOW(Text18Message24)
jr_018_4049:
    db HIGH(Text18Message24)
    db LOW(Text18Message25), HIGH(Text18Message25)
    db LOW(Text18Message26), HIGH(Text18Message26)
    db LOW(Text18Message27), HIGH(Text18Message27)
    db LOW(Text18Message28), HIGH(Text18Message28)
    db LOW(Text18Message29), HIGH(Text18Message29)
    db LOW(Text18Message2A), HIGH(Text18Message2A)
    db LOW(Text18Message2B), HIGH(Text18Message2B)
    db LOW(Text18Message2C), HIGH(Text18Message2C)
    db LOW(Text18Message2D), HIGH(Text18Message2D)
    db LOW(Text18Message2E), HIGH(Text18Message2E)
    db LOW(Text18Message2F), HIGH(Text18Message2F)
    db LOW(Text18Message30), HIGH(Text18Message30)
    db LOW(Text18Message31), HIGH(Text18Message31)
    db LOW(Text18Message32), HIGH(Text18Message32)
    db LOW(Text18Message33), HIGH(Text18Message33)
    db LOW(Text18Message34), HIGH(Text18Message34)
    db LOW(Text18Message35), HIGH(Text18Message35)
    db LOW(Text18Message36), HIGH(Text18Message36)
    db LOW(Text18Message37), HIGH(Text18Message37)
    db LOW(Text18Message38), HIGH(Text18Message38)
    db LOW(Text18Message39), HIGH(Text18Message39)
    db LOW(Text18Message3A), HIGH(Text18Message3A)
    db LOW(Text18Message3B), HIGH(Text18Message3B)
    db LOW(Text18Message3C), HIGH(Text18Message3C)
    db LOW(Text18Message3D), HIGH(Text18Message3D)
    db LOW(Text18Message3E), HIGH(Text18Message3E)
    db LOW(Text18Message3F), HIGH(Text18Message3F)
; Sixty-four message pointers for one text group.
Text18Msgs1:
    db LOW(Text18Message40), HIGH(Text18Message40)
    db LOW(Text18Message41), HIGH(Text18Message41)
    db LOW(Text18Message42), HIGH(Text18Message42)
    db LOW(Text18Message43), HIGH(Text18Message43)
    db LOW(Text18Message44), HIGH(Text18Message44)
    db LOW(Text18Message45), HIGH(Text18Message45)
    db LOW(Text18Message46), HIGH(Text18Message46)
    db LOW(Text18Message47), HIGH(Text18Message47)
    db LOW(Text18Message48), HIGH(Text18Message48)
    db LOW(Text18Message49), HIGH(Text18Message49)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4A), HIGH(Text18Message4A)
    db LOW(Text18Message4F), HIGH(Text18Message4F)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
    db LOW(Text18Message50), HIGH(Text18Message50)
; [OBJECT_WRAM:37C5]が われた。[END]
Text18Message00:
    INCBIN "../../res/text/JP/banks/18.bin", $100, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $103, $7
; [OBJECT_WRAM:37C5]は われている。[END]
Text18Message01:
    INCBIN "../../res/text/JP/banks/18.bin", $10a, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $10d, $9
; [OBJECT_WRAM:37C5]を あけた。[END]
Text18Message02:
    INCBIN "../../res/text/JP/banks/18.bin", $116, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $119, $7
; [OBJECT_WRAM:37C5]を しめた。[END]
Text18Message03:
    INCBIN "../../res/text/JP/banks/18.bin", $120, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $123, $7
; おれは [OBJECT_WRAM:37C5]で / つみもないひとを ころしてしまった![END]
Text18Message04:
    INCBIN "../../res/text/JP/banks/18.bin", $12a, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $131, $15
; おんなは いっしゅん おどろいたが / さしだした [OBJECT_WRAM:37C5]をみて / ニコリと わらった。[PAGE] / 「すばらしい プレゼントを /  ありがとう。 /  でも これは うけとれませ...
Text18Message05:
    INCBIN "../../res/text/JP/banks/18.bin", $146, $19
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $161, $37
; おんなは あいそわらいをして / [OBJECT_WRAM:37C5]を つきかえした。[PAGE] / 「これは チップに /  かえられませんよ。」[END]
Text18Message06:
    INCBIN "../../res/text/JP/banks/18.bin", $198, $e
jr_018_41a6:
    INCBIN "../../res/text/JP/banks/18.bin", $1a6, $2
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $1aa, $20
; グレーの まるい ボタンだ。 / これを おせば [NUM8_WRAM:87C5]かいに / いくことができる。[END]
Text18Message07:
    INCBIN "../../res/text/JP/banks/18.bin", $1ca, $18
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $1e4, $e
; かんばんには 「[NUM8_WRAM:87C5]ばんせん」と / かいてある。[END]
Text18Message08:
    INCBIN "../../res/text/JP/banks/18.bin", $1f2, $9
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $1fd, $e
; [NUM8_WRAM:87C5]ばんせんへの いりぐちだ。[END]
Text18Message09:
    INCBIN "../../res/text/JP/banks/18.bin", $20b, $1
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $20e, $e
; 「[NUM8_WRAM:87C5]ばんせん」と かかれた / かんばんが つるされている。[END]
Text18Message0A:
    INCBIN "../../res/text/JP/banks/18.bin", $21c, $2
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $220, $1b
; 「この れっしゃは /  [OBJECT_WRAM:37C5]いきです。[PAGE] /  ごりようのかたは りょうきん /  [NUM8_WRAM:87C5]ドルを わたしに /  はらってください。」[END]
Text18Message0B:
    INCBIN "../../res/text/JP/banks/18.bin", $23b, $c
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $249, $18
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $263, $15
; おれが きりかかろうとすると / しゃしょうが ものすごいちからで / おれの てから [OBJECT_WRAM:37C5]を / とりあげた![PAGE] / そして おれを れっしゃから / けりおろして いった。...
Text18Message0C:
    INCBIN "../../res/text/JP/banks/18.bin", $278, $29
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $2a3, $24
; [OBJECT_WRAM:37C5]えきに ついた。[END]
Text18Message0D:
    INCBIN "../../res/text/JP/banks/18.bin", $2c7, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $2ca, $9
; おれは [OBJECT_WRAM:37C5]を / ころしてしまった・・・。[PAGE] / ひとを ころすなんて まともな / にんげんが やることではない。[PAGE] / せいとうぼうえいなら まだしも / つみ...
Text18Message0E:
    INCBIN "../../res/text/JP/banks/18.bin", $2d3, $5
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $2da, $5d
; [OBJECT_WRAM:37C5]を つくえのなかに / いれた。[END]
Text18Message0F:
    INCBIN "../../res/text/JP/banks/18.bin", $337, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $33a, $f
; えいがで けいかんが はんにんに / はくじょうさせるとき するように / あかりを [OBJECT_WRAM:37C5]の かおに / むけて あてた。[PAGE] / だが はくじょうしない。[END]
Text18Message10:
    INCBIN "../../res/text/JP/banks/18.bin", $349, $1c
jr_018_4365:
    INCBIN "../../res/text/JP/banks/18.bin", $365, $c
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $373, $1c
; [OBJECT_WRAM:37C5]を みにつけるために / [OBJECT_WRAM:38C5]を ぬぐ / ひつようがある。[END]
Text18Message11:
    INCBIN "../../res/text/JP/banks/18.bin", $38f, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $392, $c
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/18.bin", $3a0, $5
jr_018_43a5:
    INCBIN "../../res/text/JP/banks/18.bin", $3a5, $9
; [OBJECT_WRAM:37C5]を ぬいだ。[END]
Text18Message12:
    INCBIN "../../res/text/JP/banks/18.bin", $3ae, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $3b1, $1
jr_018_43b2:
    INCBIN "../../res/text/JP/banks/18.bin", $3b2, $6
; かねで できた じゃぐちだ。 / [OBJECT_WRAM:37C5] ふちどりが してある。[END]
Text18Message13:
    INCBIN "../../res/text/JP/banks/18.bin", $3b8, $10
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $3ca, $d
; [OBJECT_WRAM:37C5]で てくびを / きった。[END]
Text18Message14:
    INCBIN "../../res/text/JP/banks/18.bin", $3d7, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $3da, $c
; [OBJECT_WRAM:37C5]に たまが あたって / はねかえった。[PAGE] / あぶない! / もうすこしで おれに あたる / ところだった・・・。[END]
Text18Message15:
    INCBIN "../../res/text/JP/banks/18.bin", $3e6, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $3e9, $33
; [OBJECT_WRAM:37C5]を せんたくきの / なかに いれた。[END]
Text18Message16:
    INCBIN "../../res/text/JP/banks/18.bin", $41c, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $41f, $12
; [OBJECT_WRAM:37C5]に なげるなんて / あまりにも むいみな ことだ。[END]
Text18Message17:
    INCBIN "../../res/text/JP/banks/18.bin", $431, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $434, $19
; 「[NUM8_WRAM:87C5]」と ばんごうの かいてある / プレートだ。[END]
Text18Message18:
    INCBIN "../../res/text/JP/banks/18.bin", $44d, $2
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $451, $16
; [OBJECT_WRAM:37C5]は あいている。[END]
Text18Message19:
    INCBIN "../../res/text/JP/banks/18.bin", $467, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $46a, $9
; [OBJECT_WRAM:37C5]は しまっている。[END]
Text18Message1A:
    INCBIN "../../res/text/JP/banks/18.bin", $473, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $476, $a
; [OBJECT_WRAM:37C5]は こわれている。[END]
Text18Message1B:
    INCBIN "../../res/text/JP/banks/18.bin", $480, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $483, $a
; [OBJECT_WRAM:37C5]を てにいれた。[END]
Text18Message1C:
    INCBIN "../../res/text/JP/banks/18.bin", $48d, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $490, $9
; スカッ![PAGE] / おれの ては [OBJECT_WRAM:37C5]に / とどかなかった。[PAGE] / だが [OBJECT_WRAM:37C5]を / おこらせてしまったようだ。[END]
Text18Message1D:
    INCBIN "../../res/text/JP/banks/18.bin", $499, $d
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $4a8, $f
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $4b9, $10
; [OBJECT_WRAM:37C5]は おおごえで / ようじんぼうを よんだ![END]
Text18Message1E:
    INCBIN "../../res/text/JP/banks/18.bin", $4c9, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $4cc, $15
; [NUM8_WRAM:87C5]かいの ボタンを おした。[END]
Text18Message1F:
    INCBIN "../../res/text/JP/banks/18.bin", $4e1, $1
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $4e4, $e
; [NUM8_WRAM:87C5]かいに ついた。[END]
Text18Message20:
    INCBIN "../../res/text/JP/banks/18.bin", $4f2, $1
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $4f5, $9
; [OBJECT_WRAM:37C5]を あけなければ / できない![END]
Text18Message21:
    INCBIN "../../res/text/JP/banks/18.bin", $4fe, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $501, $f
; [OBJECT_WRAM:37C5]が あいた。[END]
Text18Message22:
    INCBIN "../../res/text/JP/banks/18.bin", $510, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $513, $7
; [OBJECT_WRAM:37C5]が しまった。[END]
Text18Message23:
    INCBIN "../../res/text/JP/banks/18.bin", $51a, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $51d, $8
; うんてんしゅ めがけて / [OBJECT_WRAM:37C5]を つきだした。[PAGE] / だが ぼうだんガラスに はばまれた。それに もうすこしで [OBJECT_WRAM:37C5]の / はが おれるところ...
Text18Message24:
    INCBIN "../../res/text/JP/banks/18.bin", $525, $d
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $534, $27
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $55d, $10
; [OBJECT_WRAM:37C5]の ポケットを / あけた。[END]
Text18Message25:
    INCBIN "../../res/text/JP/banks/18.bin", $56d, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $570, $d
; [OBJECT_WRAM:37C5]の ポケットを / しめた。[END]
Text18Message26:
    INCBIN "../../res/text/JP/banks/18.bin", $57d, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $580, $d
; [OBJECT_WRAM:37C5]の ポケットは / あいている。[END]
Text18Message27:
    INCBIN "../../res/text/JP/banks/18.bin", $58d, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $590, $f
; [OBJECT_WRAM:37C5]の ポケットは / しまっている。[END]
Text18Message28:
    INCBIN "../../res/text/JP/banks/18.bin", $59f, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $5a2, $10
; [OBJECT_WRAM:37C5]は おれが ふくを / ぬぎはじめたので / ビックリしたようだ。[PAGE] / とつぜん おおごえを はりあげ / たすけを よんだ![END]
Text18Message29:
    INCBIN "../../res/text/JP/banks/18.bin", $5b2, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $5b5, $38
; [OBJECT_WRAM:37C5]は おれが なにも / きていないので / ビックリしたようだ。[PAGE] / とつぜん おおごえを はりあげ / たすけを よんだ![END]
Text18Message2A:
    INCBIN "../../res/text/JP/banks/18.bin", $5ed, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $5f0, $37
; [NUM8_WRAM:87C5]かいに つづいている。[END]
Text18Message2B:
    INCBIN "../../res/text/JP/banks/18.bin", $627, $1
    db LOW(wScriptValue0), HIGH(wScriptValue0)
    INCBIN "../../res/text/JP/banks/18.bin", $62a, $c
; [OBJECT_WRAM:37C5]を すてた。[END]
Text18Message2C:
    INCBIN "../../res/text/JP/banks/18.bin", $636, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $639, $7
; [OBJECT_WRAM:37C5]は やくに / たちそうもないので すてた。[END]
Text18Message2D:
    INCBIN "../../res/text/JP/banks/18.bin", $640, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $643, $d
jr_018_4650:
    INCBIN "../../res/text/JP/banks/18.bin", $650, $8
jr_018_4658:
; [OBJECT_WRAM:37C5][OBJECT_WRAM:38C5]と / ないようが すこし ちがっている。[END]
Text18Message2E:
    INCBIN "../../res/text/JP/banks/18.bin", $658, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $65b, $1
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/18.bin", $65e, $14
; こ[OBJECT_WRAM:37C5]には 0ばんの / しはらいが かかれて[OBJECT_WRAM:38C5]。[END]
Text18Message2F:
    INCBIN "../../res/text/JP/banks/18.bin", $672, $1
jr_018_4673:
    INCBIN "../../res/text/JP/banks/18.bin", $673, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $676, $9
jr_018_467f:
    INCBIN "../../res/text/JP/banks/18.bin", $67f, $a
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/18.bin", $68b, $2
; [OBJECT_WRAM:37C5][OBJECT_WRAM:38C5]と / みくらべると・・・[END]
Text18Message30:
    INCBIN "../../res/text/JP/banks/18.bin", $68d, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $690, $1
    db LOW(wTextName1), HIGH(wTextName1)
jr_018_4693:
    INCBIN "../../res/text/JP/banks/18.bin", $693, $c
; こ[OBJECT_WRAM:37C5]には 0ばんが / [OBJECT_WRAM:38C5]な・・・。[END]
Text18Message31:
    INCBIN "../../res/text/JP/banks/18.bin", $69f, $2
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $6a3, $9
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/18.bin", $6ae, $6
; [OBJECT_WRAM:37C5][OBJECT_WRAM:38C5]と / ないようは おなじだ。[END]
Text18Message32:
    INCBIN "../../res/text/JP/banks/18.bin", $6b4, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $6b7, $1
    db LOW(wTextName1), HIGH(wTextName1)
    INCBIN "../../res/text/JP/banks/18.bin", $6ba, $e
; 「やっと みつけたぞ![PAGE] /  あの へやに シガーリングを /  おいて ボスと あにきを /  あらそわせようと したんだろうが /  そうは いかない!」[PAGE] / 「きけんを かんじた あにきは...
Text18Message33:
    INCBIN "../../res/text/JP/banks/18.bin", $6c8, $42
jr_018_470a:
    INCBIN "../../res/text/JP/banks/18.bin", $70a, $e9
; ははあん・・・。[PAGE] / [OBJECT_WRAM:37C5]の きろくちょうは / マロンを ごまかすために シーゲルがつくった にせものだな![PAGE] / ボンドウェルが シーゲルの / ところから ぬ...
Text18Message34:
    INCBIN "../../res/text/JP/banks/18.bin", $7f3, $a
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $7ff, $4e
; 「チップは 1まい 5ドルです。 /  なんまいの チップに /  こうかんしますか?」 /           [NUM8_WRAM:C3C5] まい[WAIT_END]
Text18Message35:
    INCBIN "../../res/text/JP/banks/18.bin", $84d, $34
    db LOW(wChipCount), HIGH(wChipCount)
    INCBIN "../../res/text/JP/banks/18.bin", $883, $4
; 「チップは 1まい 5ドルです。 /  なんまいを おかねに /  こうかんしますか?」 /           [NUM8_WRAM:C3C5] まい[WAIT_END]
Text18Message36:
    INCBIN "../../res/text/JP/banks/18.bin", $887, $34
    db LOW(wChipCount), HIGH(wChipCount)
    INCBIN "../../res/text/JP/banks/18.bin", $8bd, $4
; 「ごうけい [NUM8_WRAM:A7C8]ドルに /  なります。 /  ありがとうございました。」[END]
Text18Message37:
    INCBIN "../../res/text/JP/banks/18.bin", $8c1, $7
    db LOW(wArg0), HIGH(wArg0)
    INCBIN "../../res/text/JP/banks/18.bin", $8ca, $1a
; 「なにが ほしいんだい?」 /          でんち /          ピストルのたま /          いらない[WAIT_END]
Text18Message38:
    INCBIN "../../res/text/JP/banks/18.bin", $8e4, $3a
; 「まいどあり! /  ほかに なにか ほしいかい?」 /          は い /          いいえ[WAIT_END]
Text18Message39:
    INCBIN "../../res/text/JP/banks/18.bin", $91e, $33
; [OBJECT_WRAM:37C5]は あかない。[END]
Text18Message3A:
    INCBIN "../../res/text/JP/banks/18.bin", $951, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $954, $8
; ・・・ズデン!!![PAGE] / ころんだひょうしに あたまを ゆかにおもいっきり うちつけてしまった。[PAGE] / うちどころが わるかったらしい。[PAGE] / おれは にどと めざめることは / なかった...
Text18Message3B:
    INCBIN "../../res/text/JP/banks/18.bin", $95c, $58
; おれは ただで ブラックジャックが / できないか [OBJECT_WRAM:37C5]に / たのみこんだ。[PAGE] / すると [OBJECT_WRAM:37C5]は いった。[END]
Text18Message3C:
    INCBIN "../../res/text/JP/banks/18.bin", $9b4, $19
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $9cf, $f
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $9e0, $7
; 「きそくにより そういうことは /  できませんが どうしてもと /  いうなら さばくに いってみては /  どうでしょうか?[PAGE] /  さばくで ひろった おかねを /  もとでにして ここで /  おおも...
Text18Message3D:
    INCBIN "../../res/text/JP/banks/18.bin", $9e7, $6f
; 「そんな ことをして もし /  オーナーに しれたら /  おれは ころされてしまう・・・。[PAGE] /  かわりに さばくに /  いってみるといい・・・。[PAGE] /  マフィアに ころされたやつの / ...
Text18Message3E:
    INCBIN "../../res/text/JP/banks/18.bin", $a56, $80
; かぜに まっている 10ドルさつを / みつけた。[PAGE] / 10ドルを てにいれた。[END]
Text18Message3F:
    INCBIN "../../res/text/JP/banks/18.bin", $ad6, $25
; 「この れっしゃは /  [OBJECT_WRAM:37C5]いきです。」 / と かいてある。[END]
Text18Message40:
    INCBIN "../../res/text/JP/banks/18.bin", $afb, $c
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $b09, $10
; じむいんは いった。[PAGE] / 「これは したいの もちものだ! /  けいかんいがいは さわっては /  いけない!」[END]
Text18Message41:
    INCBIN "../../res/text/JP/banks/18.bin", $b19, $34
; ああ・・・。 / ほかにも やらなければ いけない / ことが あったようだ・・・。[END]
Text18Message42:
    INCBIN "../../res/text/JP/banks/18.bin", $b4d, $27
; ああ・・・。 / ざんねんながら / にげおくれたようだ・・・。[END]
Text18Message43:
    INCBIN "../../res/text/JP/banks/18.bin", $b74, $1d
; [OBJECT_WRAM:37C5]は なにも / つけていない。[END]
Text18Message44:
    INCBIN "../../res/text/JP/banks/18.bin", $b91, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $b94, $e
; じょうはんしんは [OBJECT_WRAM:37C5]を / きている。[END]
Text18Message45:
    INCBIN "../../res/text/JP/banks/18.bin", $ba2, $a
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $bae, $8
; 「わたしと しょうぶしたいときは /  チップを つかってください![PAGE] /  チップは りょうがえしょで /  おかねと こうかんします。」[END]
Text18Message46:
    INCBIN "../../res/text/JP/banks/18.bin", $bb6, $40
; でんとうを とらなければ できない。[END]
Text18Message47:
    INCBIN "../../res/text/JP/banks/18.bin", $bf6, $13
; [OBJECT_WRAM:37C5]は いった。[PAGE] / 「ブラックジャックの ルールは /  しっていますか?」 /          は い /          いいえ[WAIT_END]
Text18Message48:
    INCBIN "../../res/text/JP/banks/18.bin", $c09, $1
    db LOW(wTextName0), HIGH(wTextName0)
    INCBIN "../../res/text/JP/banks/18.bin", $c0c, $3c
; すなの うえに タイヤの / あとが つづいている。[END]
Text18Message49:
    INCBIN "../../res/text/JP/banks/18.bin", $c48, $19
; ルーディーは こまったように / ささやいた。[PAGE] / 「・・・エース。 /  ボスが さっきから こっちを /  にらんでいるんだ。[PAGE] /  ひょっとして ボスに /  かんづかれたかな?[PAGE...
Text18Message4A:
    INCBIN "../../res/text/JP/banks/18.bin", $c61, $7b
; いたが うちつけられて / いるために はいれない。[PAGE] / いたさえなければ・・・。[END]
Text18Message4F:
    INCBIN "../../res/text/JP/banks/18.bin", $cdc, $1f
jr_018_4cfb:
    INCBIN "../../res/text/JP/banks/18.bin", $cfb, $7
; [END]
Text18Message50:
    INCBIN "../../res/text/JP/banks/18.bin", $d02, $1
; Fixed-width object-name records.
C2ObjectNames:
    INCBIN "../../res/text/JP/banks/18.bin", $d03, $83
jr_018_4d86:
    INCBIN "../../res/text/JP/banks/18.bin", $d86, $158
jr_018_4ede:
    INCBIN "../../res/text/JP/banks/18.bin", $ede, $86
jr_018_4f64:
    INCBIN "../../res/text/JP/banks/18.bin", $f64, $417
jr_018_537b:
    INCBIN "../../res/text/JP/banks/18.bin", $137b, $9
jr_018_5384:
    INCBIN "../../res/text/JP/banks/18.bin", $1384, $c
jr_018_5390:
    INCBIN "../../res/text/JP/banks/18.bin", $1390, $2c35
Jump_018_7fc5:
    INCBIN "../../res/text/JP/banks/18.bin", $3fc5, $3b
