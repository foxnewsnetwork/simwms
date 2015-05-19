`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiChildSpriteComponent from './pixi-child-sprite'`

PixiPalletComponent = PixiChildSpriteComponent.extend
  src: "images/markers.png"
  defaultScale:
    x: 0.4
    y: 0.4
  defaultShift:
    x: 30
    y: -15

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    pallet = new PIXI.TilingSprite @get("texture"), 300, 260
    pallet.tilePosition.x = -2075
    pallet.tilePosition.y = 0
    pallet.scale.x = @get("defaultScale.x")
    pallet.scale.y = @get("defaultScale.y")
    pallet

`export default PixiPalletComponent`
