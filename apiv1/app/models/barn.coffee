`import DS from 'ember-data'`
`import Ember from 'ember'`
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

  isWaiting: Ember.computed.equal "status", "waiting"
  isOkay: Ember.computed.equal "status", "okay"
  isInUse: Ember.computed.equal "status", "in use"
  isProblem: Ember.computed.equal "status", "problem"
  order: Ember.computed.alias "position.order"
  dockNumber: Ember.computed.alias("tileName")

  position: Ember.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")

`export default Barn`
