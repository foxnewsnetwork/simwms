`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiBaseMixin from '../mixins/pixi-base'`

PixiChildSpriteComponent = Ember.Component.extend PixiBaseMixin,
  manageCamera: Ember.observer "camera.x", "camera.y", "camera.zoom", ->
    @set "sprite.position.x", @get("camera.zoom") * @get("defaultShift.x")
    @set "sprite.position.y", @get("camera.zoom") * @get("defaultShift.y")
    @set "sprite.scale.x", @get("defaultScale.x") * @get("camera.zoom")
    @set "sprite.scale.y", @get("defaultScale.y") * @get("camera.zoom")

  didFinishPreloading: ->
    @_super()
    @set "sprite.isometricTilePosition", @get("position")
    @get("parentView").appendToStage @get "sprite"
    @manageCamera()

  willDestroyElement: ->
    @get("parentView").removeFromStage @get "sprite"

  texture: FunEx.computed "src", ->
    return if Ember.isBlank @get "src"
    PIXI.Texture.fromImage @get "src"

`export default PixiChildSpriteComponent`
