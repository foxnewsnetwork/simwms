`import Ember from 'ember'`
`import PhraseBuilder from '../utils/phrase-builder'`

PixiCanvasComponent = Ember.Component.extend
  classNames: ['pixi-canvas']
  preloadReady: false
  fireAnimator: (key) ->
    delete @animators[key]

  hireAnimator: (animate) ->
    @animators ||= {}
    key = PhraseBuilder.uniq()
    @animators[key] = animate
    key

  windowWidth: -> 0.95 * window.screen.availWidth
  windowHeight: -> 0.825 * window.screen.availHeight
  didInsertElement: ->
    @set "renderer", PIXI.autoDetectRecommendedRenderer @windowWidth(), @windowHeight()    
    @$(".pixi-canvas-element-container").append @get("renderer.view")
    window.requestAnimationFrame _.bind @animate, @

  animate: ->
    window.requestAnimationFrame _.bind @animate, @
    animator @get "renderer" for key, animator of @animators


`export default PixiCanvasComponent`
