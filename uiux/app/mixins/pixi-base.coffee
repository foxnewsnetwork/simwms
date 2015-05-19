`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`

AssetUrls = [
  "images/light-bg.jpg",
  "images/tiles.png",
  "images/road.png",
  "images/markers.png",
  "images/game.png",
  "images/trucks.png"
]

assetPreloader = new PIXI.AssetLoader AssetUrls
assetPreloader.load()
PreloaderReady = false

PixiBaseMixin = Ember.Mixin.create
  didInsertElement: ->
    @set "readyFlags.insertion", true

  didFinishPreloading: ->
    @set "readyFlags.preload", true

  watchPosition: FunEx.observed "model.x", "model.y", ->
    return unless @get("model.x")? and @get("model.y")?
    @set "readyFlags.position", true
  
  watchReadiness: Ember.observer "readyFlags.insertion", "readyFlags.position", "readyFlags.preload", ->
    return unless @get("readyFlags.insertion") is true
    return unless @get("readyFlags.preload") is true
    return unless @get("readyFlags.position") is true
    @didReadyEverything() if @didReadyEverything?

  init: ->
    @_super()
    @set "readyFlags", Ember.Object.create insertion: false, position: false, preload: false
    if @didFinishPreloading
      @didFinishPreloading() if PreloaderReady
      assetPreloader.on "onComplete", => 
        PreloaderReady = true
        @didFinishPreloading()

    @watchPosition()
      
`export default PixiBaseMixin`
