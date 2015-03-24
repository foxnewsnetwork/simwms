`import DS from 'ember-data'`
`import FunEx from '../utils/fun-ex'`
`import PixiPosition from '../utils/pixi-position'`

KnownStatuses = [
  "okay",
  "waiting",
  "in use", 
  "problem"
]
Barn = DS.Model.extend
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"
  tileName: DS.attr "string"
  status: DS.attr "string"

  isWaiting: FunEx.computed "status", ->
    "waiting" is @get("status")
  isOkay: FunEx.computed "status", ->
    "okay" is @get("status")
  isInUse: FunEx.computed "status", ->
    "in use" is @get("status")
  isProblem: FunEx.computed "status", ->
    "problem" is @get("status")
    
  workOnTruck: (truck) ->
    @set "status", "in use"
    @save()

  finishWithTruck: ->
    @set "status", "okay"
    @save()

  order: FunEx.computed "position.order", ->
    @get("position.order")

  position: FunEx.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")

  dockNumber: Ember.computed.alias("tileName")
`export default Barn`
