`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

polygon = new PIXI.Polygon new PIXI.Point(0,80),
  new PIXI.Point(0, 115), 
  new PIXI.Point(85, 160), 
  new PIXI.Point(175, 110),
  new PIXI.Point(175, 40),
  new PIXI.Point(130, 0),
  new PIXI.Point(100, 0),
  new PIXI.Point(60, 50),

PixiBarnComponent = PixiTileSpriteComponent.extend
  src: "images/tiles.png"
  defaultScale:
    x: 0.7
    y: 0.7
  defaultShift:
    x: 5
    y: -10
  action: "openModal"

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    barn = new PIXI.TilingSprite @get("texture"), 175, 160
    barn.buttonMode = true
    barn.interactive = true
    barn.mousedown = barn.touchstart = _.bind @requestModal, @
    barn.mouseover = _.bind @glowSprite, @
    barn.mouseout = _.bind @unglowSprite, @
    barn.tilePosition.x = -1170
    barn.tilePosition.y = -1260
    barn.scale.x = @get("defaultScale.x")
    barn.scale.y = @get("defaultScale.y")
    barn.hitArea = polygon
    barn

  signalStatus: FunEx.computed ->
    _.sample ["okay", "in use", "problem"]

  requestModal: ->
    @sendAction 'action', "barn", @get("sprite")
  glowSprite: ->
    @set "sprite.tint", 0xffcccc
  unglowSprite: ->
    @set "sprite.tint", 0xffffff

`export default PixiBarnComponent`
