`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

PixiMarkerComponent = PixiTileSpriteComponent.extend
  src: "images/markers.png"
  defaultScale:
    x: 0.5
    y: 0.5
  defaultShift:
    x: 25
    y: -60
  grid: FunEx.computed "path.grid", -> @get "path.grid"

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    path = new PIXI.TilingSprite @get("texture"), 150, 275
    path.tilePosition.x = -150
    path.tilePosition.y = 0
    path.scale.x = @get("defaultScale.x")
    path.scale.y = @get("defaultScale.y")
    path

`export default PixiMarkerComponent`
