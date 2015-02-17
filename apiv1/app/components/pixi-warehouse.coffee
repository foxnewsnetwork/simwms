`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiPosition from '../utils/pixi-position'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

dogFood = true
shouldHaveMaterial = ->
  if dogFood
    dogFood = false
    return true
  else
    return false

PixiWarehouseComponent = PixiTileSpriteComponent.extend
  src: "images/road.png"
  defaultScale:
    x: 0.9
    y: 0.9
  defaultShift:
    x: 0
    y: 30

  init: ->
    @_super()
    @hasMaterial = shouldHaveMaterial() 

  appendToStage: (sprite) ->
    @get("sprite").addChild sprite

  removeFromStage: (sprite) ->
    @get("sprite").removeChild sprite

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    warehouse = new PIXI.TilingSprite @get("texture"), 140, 85
    warehouse.tilePosition.x = 0
    warehouse.tilePosition.y = -285
    warehouse.scale.x = @get("defaultScale.x")
    warehouse.scale.y = @get("defaultScale.y")
    warehouse

`export default PixiWarehouseComponent`
