`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`


PixiBarnComponent = PixiTileSpriteComponent.extend
  src: "images/tiles.png"
  defaultScale:
    x: 0.7
    y: 0.7
  defaultShift:
    x: 5
    y: -10

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    barn = new PIXI.TilingSprite @get("texture"), 175, 160
    barn.tilePosition.x = -1170
    barn.tilePosition.y = -1260
    barn.scale.x = @get("defaultScale.x")
    barn.scale.y = @get("defaultScale.y")
    barn

`export default PixiBarnComponent`
