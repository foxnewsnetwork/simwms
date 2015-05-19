`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiChildSpriteComponent from './pixi-child-sprite'`

KnownStatuses = ["okay", "in use", "problem"]
PixiBarnSignalsComponent = PixiChildSpriteComponent.extend
  src: "images/road.png"
  defaultScale:
    x: 1
    y: 1
  defaultShift:
    x: 70
    y: 10

  manageStatus: FunEx.observed "status", ->
    return @signalOkay() if @get("status") is "okay"
    return @signalUse() if @get("status") is "in use"
    @signalProblem()

  didFinishPreloading: ->
    @_super()
    @manageStatus()

  signalOkay: ->
    @set "sprite.tilePosition.y", -795
  signalUse: ->
    @set "sprite.tilePosition.y", -885
  signalProblem: ->
    @set "sprite.tilePosition.y", -970

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    signal = new PIXI.TilingSprite @get("texture"), 118, 85
    signal.tilePosition.x = 0
    signal.tilePosition.y = -795
    signal.scale.x = @get("defaultScale.x")
    signal.scale.y = @get("defaultScale.y")
    signal

`export default PixiBarnSignalsComponent`