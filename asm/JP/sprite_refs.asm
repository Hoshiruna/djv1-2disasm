
SpriteSetRefs:
    dw SpriteSet0
    dw SpriteSet1
    dw SpriteSet2

SpriteSet0:
    dw UiSpritePtrs
    dw SpriteSet0Aux

UiSpritePtrs:
    dw UiSprite0

UiSprite0:
    db $02, $00, $00, $e7, $06, $00, $08, $e8, $06

SpriteSet0Aux:
    dw SpriteSet1

SpriteSet1:
    dw C1SpriteDefs
    dw C1AnimPtrs
