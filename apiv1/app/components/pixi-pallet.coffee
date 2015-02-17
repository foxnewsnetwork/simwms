`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiBaseMixin from '../mixins/pixi-base'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

PixiPalletComponent = Ember.Component.extend PixiBaseMixin,
  src: "images/markers.png"
  defaultScale:
    x: 0.4
    y: 0.4
  defaultShift:
    x: 30
    y: -15

  init: -> @_super()

  manageCamera: Ember.observer "camera.x", "camera.y", "camera.zoom", ->
    @set "sprite.position.x", @get("camera.zoom") * @get("defaultShift.x")
    @set "sprite.position.y", @get("camera.zoom") * @get("defaultShift.y")
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

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    pallet = new PIXI.TilingSprite @get("texture"), 300, 260
    pallet.tilePosition.x = -2075
    pallet.tilePosition.y = 0
    pallet.scale.x = @get("defaultScale.x")
    pallet.scale.y = @get("defaultScale.y")
    pallet

`export default PixiPalletComponent`
