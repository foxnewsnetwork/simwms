`import Ember from 'ember'`
`import FunEx from '../utils/fun-ex'`
`import PixiBarnSignalsComponent from './pixi-barn-signals'`

PixiScaleSignalsComponent = PixiBarnSignalsComponent.extend
  defaultScale:
    x: 1.2
    y: 1.2
  defaultShift:
    x: -2
    y: 2
  manageStatus: FunEx.observed "status", ->
    return @signalOkay() if @get("status") is "okay"
    return @signalUse() if @get("status") is "in use"
    @signalProblem()

  didFinishPreloading: ->
    @_super()
    @manageStatus()

  signalOkay: ->
    @set "sprite.tilePosition.x", 0
  signalUse: ->
    @set "sprite.tilePosition.x", -30
  signalProblem: ->
    @set "sprite.tilePosition.x", -60

  sprite: FunEx.computed "texture", ->
    return if Ember.isBlank @get "texture"
    signal = new PIXI.TilingSprite @get("texture"), 30, 35
    signal.tilePosition.x = 0
    signal.tilePosition.y = -1055
    signal.scale.x = @get("defaultScale.x")
    signal.scale.y = @get("defaultScale.y")
    signal

`export default PixiScaleSignalsComponent`