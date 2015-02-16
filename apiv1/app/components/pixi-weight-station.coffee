`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

polygon = new PIXI.Polygon new PIXI.Point(0,20),
  new PIXI.Point(0, 30), 
  new PIXI.Point(30, 35), 
  new PIXI.Point(85, 0),
  new PIXI.Point(140, 35),
  new PIXI.Point(140, 65),
  new PIXI.Point(160, 70),
  new PIXI.Point(80, 120),
  new PIXI.Point(0, 75)

PixiWeightStationComponent = PixiTileSpriteComponent.extend
  src: "images/game.png"
  defaultScale:
    x: 0.75
    y: 0.75
  defaultShift:
    x: 5
    y: 15
  action: "openModal"

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    station = new PIXI.TilingSprite @get("texture"), 160, 120
    station.buttonMode = true
    station.interactive = true
    station.mousedown = station.touchstart = _.bind @requestModal, @
    station.mouseover = _.bind @glowSprite, @
    station.mouseout = _.bind @unglowSprite, @
    station.tilePosition.x = -160
    station.tilePosition.y = 135
    station.scale.x = @get("defaultScale.x")
    station.scale.y = @get("defaultScale.y")
    station.hitArea = polygon
    station

  requestModal: ->
    @sendAction 'action', "weight-station", @get("sprite")
  glowSprite: ->
    @set "sprite.tint", 0xffcccc
  unglowSprite: ->
    @set "sprite.tint", 0xffffff

`export default PixiWeightStationComponent`
