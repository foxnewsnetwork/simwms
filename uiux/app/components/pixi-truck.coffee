`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`
`import PixiPosition from '../utils/pixi-position'`
KnownDirections = ["east", "south", "west", "north"]
Heights = [60, 60, 72, 72, 61, 61, 57, 57]
rectangle = new PIXI.Rectangle 0,0, 68, 61
PixiTruckComponent = PixiTileSpriteComponent.extend
  action: "openModal"
  arrival: "arriveAtBarn"
  exitSite: "exitSite"
  src: "images/trucks.png"
  defaultScale:
    x: 1
    y: 1
  defaultShift:
    x: 20
    y: 20
  path: FunEx.computed "truck", "truck.path", ->
    @get "truck.path"

  directionIndex: FunEx.computed "direction", ->
    return 0 if Ember.isBlank @get("direction")
    KnownDirections.lastIndexOf @get("direction")

  isEmptyInteger: FunEx.computed "truck.isEmpty", ->
    return 0 if @get("truck.isEmpty")
    return 1
  
  watchPath: FunEx.observed "truck.path", "truck.path.grid", "truck.path.positions.@each", ->
    return unless @get("truck.path")? and @get("truck.path.grid")? and @get("truck.path.positions")?
    return if @get "readyFlags.position"
    p = @get("truck.path.positions.firstObject")
    @set "model", PixiPosition.create x: p.get("x"), y: p.get("y"), constant: 1
    @set "readyFlags.position", true

  didReadyEverything: ->
    @_super()
    @manageLoadAndDirection()

  glowSprite: ->
    @set "sprite.tint", 0xffcccc
  unglowSprite: ->
    @set "sprite.tint", 0xffffff
  requestModal: ->
    @sendAction 'action', "truck", @get("truck")

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
  
  didFinishMotion: ->
    switch @get("truck.destinytype")
      when "barn" then @sendAction "arrival", @get("truck")
      when "scale" then @sendAction "exitSite", @get("truck")
      else throw "No idea where this truck is going"

`export default PixiTruckComponent`
