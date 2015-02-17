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

distancePerFrame = (start: start, finish: finish, tilePerSecond: tilePerSecond) ->
  [xi, yi] = normalizePoint start
  [xf, yf] = normalizePoint finish
  kx = signFloorRound xf - xi
  ky = signFloorRound yf - yi
  tilePerSecond ||= 0
  d = tilePerSecond / FPS
  [kx * d, ky * d]
  
PixiTileSpriteComponent = Ember.Component.extend PixiBaseMixin,
  initialSize:
    width: 1
    height: 1
  
  init: -> @_super()
  manageCamera: Ember.observer "camera.x", "camera.y", "camera.zoom", "position.x", "position.y", ->
    {x: x, y: y} = @get("camera").tile2px @get "position"
    @set "sprite.position.x", x + @get("camera.zoom") * @get("defaultShift.x")
    @set "sprite.position.y", y + @get("camera.zoom") * @get("defaultShift.y")
    @set "sprite.scale.x", @get("defaultScale.x") * @get("camera.zoom")
    @set "sprite.scale.y", @get("defaultScale.y") * @get("camera.zoom")

  # Yes, I know this is shit-tier sphagetti code, I'm sorry.
  # If you're not me and you're reading this, please fix it.
  # If you are me and reading it, please stop being a faggot
  manageKinetics: Ember.observer "path.positions.@each", ->
    return if Ember.isBlank @get("path.positions")
    msPerTile = 1000 / @get("path.speed")
    msPerTile = 1000 unless _.isFinite msPerTile
    waitReduce @get("path.positions"), {last: null, interval: null}, msPerTile, ({last:pos, interval:interval}, position) =>
      if interval?
        window.clearInterval interval 
      if pos? and Ember.get(pos, "x")? and Ember.get(pos, "y")?
        @set "position.x", Ember.get(pos, "x")
        @set "position.y", Ember.get(pos, "y")
      @get("parentView").refreshOnStage @get "sprite"
      [dx, dy] = distancePerFrame start: @get("position"), finish: position, tilePerSecond: @get("path.speed")
      last: position
      interval: repeatEvery MSPF, =>
        @incrementProperty "position.x", dx
        @incrementProperty "position.y", dy
    .then (last: pos, interval: interval) => 
      @set "position.x", Ember.get(pos, "x")
      @set "position.y", Ember.get(pos, "y")
      window.clearInterval interval

  didFinishPreloading: ->
    if @get("path.positions.firstObject")?
      position = PixiPosition.create x: @get("path.positions.firstObject.x"), y: @get("path.positions.firstObject.y")
      @set "position", position
    @set "sprite.isometricTilePosition", @get("position")
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

  sprite: FunEx.computed "texture", "position", ->
    return if Ember.isBlank @get "texture"
    return if Ember.isBlank @get "position"
    sprite = new PIXI.TilingSprite @get("texture"), @initialSize.width, @initialSize.height
    sprite

`export default PixiTileSpriteComponent`
