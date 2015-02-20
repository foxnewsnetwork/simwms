`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

KnownDirections = ["east", "south", "west", "north"]
Heights = [60, 60, 72, 72, 61, 61, 57, 57]
rectangle = new PIXI.Rectangle 0,0, 68, 61
PixiTruckComponent = PixiTileSpriteComponent.extend
  action: "openModal"
  src: "images/trucks.png"
  defaultScale:
    x: 1
    y: 1
  defaultShift:
    x: 20
    y: 20
  directionIndex: FunEx.computed "direction", ->
    return 0 if Ember.isBlank @get("direction")
    KnownDirections.lastIndexOf @get("direction")
  isEmptyInteger: 0

  didFinishPreloading: ->
    @_super()
    @manageLoadAndDirection()

  glowSprite: ->
    @set "sprite.tint", 0xffcccc
  unglowSprite: ->
    @set "sprite.tint", 0xffffff
  requestModal: ->
    @sendAction 'action', "truck", 1 # @get("sprite")

  manageLoadAndDirection: FunEx.observed "directionIndex", "isEmptyInteger", ->
    index = @get("directionIndex") + @get("isEmptyInteger") * 4
    heights = _.first Heights, index
    @set "sprite.tilePosition.y", -_.reduce(heights, ((a,b) -> a + b), 0)
    @set "sprite.height", Heights[index]

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    truck = new PIXI.TilingSprite @get("texture"), 67, 61
    truck.tilePosition.x = 0
    truck.tilePosition.y = 0
    truck.scale.x = @get("defaultScale.x")
    truck.scale.y = @get("defaultScale.y")
    truck.hitArea = rectangle
    truck.buttonMode = true
    truck.interactive = true
    truck.mousedown = truck.touchstart = _.bind @requestModal, @
    truck.mouseover = _.bind @glowSprite, @
    truck.mouseout = _.bind @unglowSprite, @
    truck

`export default PixiTruckComponent`
