`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

PixiTruckComponent = PixiTileSpriteComponent.extend
  src: "images/tiles.png"
  defaultScale:
    x: 0.3
    y: 0.3
  defaultShift:
    x: 25
    y: 25

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    warehouse = new PIXI.TilingSprite @get("texture"), 190, 160
    warehouse.tilePosition.x = -1170
    warehouse.tilePosition.y = -1095
    warehouse.scale.x = @get("defaultScale.x")
    warehouse.scale.y = @get("defaultScale.y")
    warehouse

`export default PixiTruckComponent`
