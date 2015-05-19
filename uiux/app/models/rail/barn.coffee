`import DS from 'ember-data'`
`import Ember from 'ember'`

RailBarn = DS.Model.extend
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"
  tileName: DS.attr "string"
  
  dockNumber: Ember.computed.alias("tileName")
  order: Ember.computed.alias "position.order"

  position: Ember.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")

`export default RailBarn`
