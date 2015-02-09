`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiBaseMixin from '../mixins/pixi-base'`

PixiTileSpriteComponent = Ember.Component.extend PixiBaseMixin,
  initialSize:
    width: 1
    height: 1
  init: -> @_super()
  manageCamera: Ember.observer "camera.x", "camera.y", "camera.zoom", "position.tileX", "position.tileY", ->
    {x: x, y: y} = @get("camera").tile2px @get "position"
    @set "sprite.position.x", x + @get("camera.zoom") * @get("defaultShift.x")
    @set "sprite.position.y", y + @get("camera.zoom") * @get("defaultShift.y")
    @set "sprite.scale.x", @get("defaultScale.x") * @get("camera.zoom")
    @set "sprite.scale.y", @get("defaultScale.y") * @get("camera.zoom")

  didFinishPreloading: ->
    @set "sprite.isometricTilePosition", @get("position")
    @get("parentView").appendToStage @get "sprite"
    @manageCamera()

  willDestroyElement: ->
    @get("parentView").removeFromStage @get "sprite"

  texture: FunEx.computed "src", ->
    return if Ember.isBlank @get "src"
    PIXI.Texture.fromImage @get "src"

  sprite: FunEx.computed "texture", "position", ->
    return if Ember.isBlank @get "texture"
    return if Ember.isBlank @get "position"
    sprite = new PIXI.TilingSprite @get("texture"), @initialSize.width, @initialSize.height
    sprite

`export default PixiTileSpriteComponent`
