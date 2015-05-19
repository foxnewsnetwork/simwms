`import Ember from 'ember'`
`import DS from 'ember-data'`

RailScale = DS.Model.extend
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"
  tileName: DS.attr "string"

  stationNumber: Ember.computed.alias("tileName")
  
  order: Ember.computed.alias "position.order"

  position: Ember.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")

  isEntryStation: Ember.computed.lte "x", 0

`export default RailScale`
