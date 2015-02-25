`import Ember from 'ember'`
`import PixiBaseMixin from '../mixins/pixi-base'`

PixiStageComponent = Ember.Component.extend PixiBaseMixin,
  defaultColor: 0x668899

  willInsertElement: ->
    @set "width", 0.95 * window.screen.availWidth
    @set "height", 0.85 * window.screen.availHeight
    @set "stage", new PIXI.Stage @get("defaultColor")
  didInsertElement: ->
    @_super()
    @set "animeKey", @get("parentView").hireAnimator _.bind(@animate, @)

  willDestroyElement: ->
    return if Ember.isBlank @get "animeKey"
    @get("parentView").fireAnimator @get "animeKey"

  appendToStage: (sprite) ->
    return if Ember.isBlank sprite
    @get("stage").addChild sprite

  removeFromStage: (sprite) ->
    return if Ember.isBlank sprite
    @get("stage").removeChild sprite

  animate: (renderer) ->
    return if Ember.isBlank @get "stage"
    renderer.render @get "stage"

`export default PixiStageComponent`
