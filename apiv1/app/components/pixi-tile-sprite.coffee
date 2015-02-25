`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import DebugEx from '../utils/debug-ex'`
`import PixiBaseMixin from '../mixins/pixi-base'`
`import normalizePoint from '../utils/normalize-point'`
`import waitReduce from '../utils/wait-reduce'`
`import PixiPosition from '../utils/pixi-position'`

repeatEvery = FunEx.flip window.setInterval
FPS = 60
MSPF = 1000 / FPS

signFloorRound = (x) -> Math.sign Math.floor Math.round(x * 100000) / 100000
decideDirection = (x,y) ->
  return "north" if x is 0 and y > 0
  return "south" if x is 0 and y < 0
  return "east" if x > 0 and y is 0
  return "west" if x < 0 and y is 0
distancePerFrame = (start: start, finish: finish, tilePerSecond: tilePerSecond) ->
  [xi, yi] = normalizePoint start
  [xf, yf] = normalizePoint finish
  kx = signFloorRound xf - xi
  ky = signFloorRound yf - yi
  tilePerSecond ||= 0
  d = tilePerSecond / FPS
  [kx * d, ky * d, decideDirection(kx, ky)]
  
PixiTileSpriteComponent = Ember.Component.extend PixiBaseMixin,
  initialSize:
    width: 1
    height: 1

  manageCamera: Ember.observer "camera.x", "camera.y", "camera.zoom", "model.x", "model.y", ->
    {x: x, y: y} = @get("camera").tile2px @get "model"
    @set "sprite.position.x", x + @get("camera.zoom") * @get("defaultShift.x")
    @set "sprite.position.y", y + @get("camera.zoom") * @get("defaultShift.y")
    @set "sprite.scale.x", @get("defaultScale.x") * @get("camera.zoom")
    @set "sprite.scale.y", @get("defaultScale.y") * @get("camera.zoom")

  manageKinetics: ->
    return if Ember.isBlank @get("truck.path.positions")
    msPerTile = 1000 / @get("truck.path.speed")
    msPerTile = 1000 unless _.isFinite msPerTile
    waitReduce @get("truck.path.positions"), @packageAggregate(), msPerTile, ({last:pos, interval:interval}, position) =>
      window.clearInterval interval if interval?
      @updatePosition pos
      @didExperienceMotion position, last: pos if @didExperienceMotion?
      @packageAggregate position
    .then (last: pos, interval: interval) =>
      @updatePosition pos
      window.clearInterval interval
      @didFinishMotion pos if @didFinishMotion?

  packageAggregate: (position) ->
    return last: null, interval: null unless position?
    [dx, dy, direction] = distancePerFrame start: @get("model"), finish: position, tilePerSecond: @get("truck.path.speed")
    @set "direction", direction
    last: position
    interval: repeatEvery MSPF, =>
      @incrementProperty "model.x", dx
      @incrementProperty "model.y", dy

  updatePosition: (pos) ->
    if pos? and Ember.get(pos, "x")? and Ember.get(pos, "y")?
      @get("parentView").refreshOnStage @get "sprite"
      @set "model.x", Ember.get(pos, "x")
      @set "model.y", Ember.get(pos, "y")

  didReadyEverything: ->
    @set "sprite.isometricTilePosition", @get("model")
    if @get("model")?
      @get("parentView").appendToStage @get "sprite"
    @manageCamera()
    @manageKinetics()

  willDestroyElement: ->
    @get("parentView").removeFromStage @get "sprite"

  appendToStage: (sprite) ->
    @get("sprite").addChild sprite

  removeFromStage: (sprite) ->
    @get("sprite").removeChild sprite

  texture: FunEx.computed "src", ->
    return if Ember.isBlank @get "src"
    PIXI.Texture.fromImage @get "src"

  sprite: FunEx.computed "texture", "model", ->
    return if Ember.isBlank @get "texture"
    return if Ember.isBlank @get "model"
    sprite = new PIXI.TilingSprite @get("texture"), @initialSize.width, @initialSize.height
    sprite

`export default PixiTileSpriteComponent`
