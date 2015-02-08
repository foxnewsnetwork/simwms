`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

PixiRoadComponent = PixiTileSpriteComponent.extend
  src: "images/road.png"
  defaultScale:
    x: 0.9
    y: 0.9
  defaultShift:
    x: 0
    y: 20

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    road = new PIXI.TilingSprite @get("texture"), 140, 95
    road.tilePosition.x = 0
    road.tilePosition.y = 0
    road.scale.x = @get("defaultScale.x")
    road.scale.y = @get("defaultScale.y")
    road

`export default PixiRoadComponent`
