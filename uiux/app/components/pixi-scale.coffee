`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

PixiScaleComponent = PixiTileSpriteComponent.extend
  src: "images/road.png"
  defaultScale:
    x: 0.85
    y: 0.85
  defaultShift:
    x: 0
    y: 25

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    scale = new PIXI.TilingSprite @get("texture"), 140, 95
    scale.tilePosition.x = 0
    scale.tilePosition.y = -535
    scale.scale.x = @get("defaultScale.x")
    scale.scale.y = @get("defaultScale.y")
    scale

`export default PixiScaleComponent`
