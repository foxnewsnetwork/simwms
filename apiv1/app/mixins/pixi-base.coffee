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

PixiBaseMixin = Ember.Mixin.create
  init: ->
    @_super()
    if @didFinishPreloading
      assetPreloader.on "onComplete", _.bind(@didFinishPreloading, @)
      
`export default PixiBaseMixin`
