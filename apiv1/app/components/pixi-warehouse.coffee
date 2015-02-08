`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

PixiWarehouseComponent = PixiTileSpriteComponent.extend
  src: "images/road.png"
  defaultScale:
    x: 0.9
    y: 0.9
  defaultShift:
    x: 0
    y: 20

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    warehouse = new PIXI.TilingSprite @get("texture"), 140, 95
    warehouse.tilePosition.x = 0
    warehouse.tilePosition.y = 95
    warehouse.scale.x = @get("defaultScale.x")
    warehouse.scale.y = @get("defaultScale.y")
    warehouse

`export default PixiWarehouseComponent`
