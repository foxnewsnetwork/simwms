`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiBaseMixin from '../mixins/pixi-base'`
`import PixiIsometricContainer from '../utils/pixi-isometric-container'`

PixiBackgroundComponent = Ember.Component.extend PixiBaseMixin,
  src: "images/simple-bg.jpg"
  init: ->
    @_super()
    @spriteIsometricContainer = new PixiIsometricContainer()

  manageCamera: Ember.observer "camera.x", "camera.y", "camera.zoom", ->
    @set "sprite.tilePosition.x", @get("camera.x")
    @set "sprite.tilePosition.y", @get("camera.y")
    @set "sprite.tileScale.x", @get("camera.zoom")
    @set "sprite.tileScale.y", @get("camera.zoom")

  appendToStage: (sprite) ->
    @spriteIsometricContainer.addChild sprite

  removeFromStage: (sprite) ->
    @spriteIsometricContainer.removeChild sprite

  refreshOnStage: (sprite) ->
    @removeFromStage sprite
    @appendToStage sprite

  didInsertElement: ->
    @spriteIsometricContainer.setContainer @get "sprite"
    @get("parentView").appendToStage @get "sprite"

  willDestroyElement: ->
    @get("parentView").removeFromStage @get "sprite"
    @spriteIsometricContainer.removeAllChildren()

  didFinishPreloading: ->
    @manageCamera()

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    new PIXI.TilingSprite @get("texture"), @get("parentView.width"), @get("parentView.height")

  texture: FunEx.computed "src", ->
    return if Ember.isBlank @get "src"
    PIXI.Texture.fromImage @get "src"


`export default PixiBackgroundComponent`
