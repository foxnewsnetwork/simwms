`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiTileSpriteComponent from './pixi-tile-sprite'`

circle = new PIXI.Circle(75,75,75)

PixiMarkerComponent = PixiTileSpriteComponent.extend
  action: "openModal"
  src: "images/markers.png"
  defaultScale:
    x: 0.5
    y: 0.5
  defaultShift:
    x: 25
    y: -60
  grid: FunEx.computed "path.grid", -> @get "path.grid"

  glowSprite: ->
    @set "sprite.tint", 0xffcccc
  unglowSprite: ->
    @set "sprite.tint", 0xffffff
  requestModal: ->
    @sendAction 'action', "truck", 1 # @get("sprite")

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    marker = new PIXI.TilingSprite @get("texture"), 150, 275
    marker.buttonMode = true
    marker.interactive = true
    marker.mousedown = marker.touchstart = _.bind @requestModal, @
    marker.mouseover = _.bind @glowSprite, @
    marker.mouseout = _.bind @unglowSprite, @
    marker.tilePosition.x = -150
    marker.tilePosition.y = 0
    marker.scale.x = @get("defaultScale.x")
    marker.scale.y = @get("defaultScale.y")
    marker.hitArea = circle
    marker

`export default PixiMarkerComponent`
