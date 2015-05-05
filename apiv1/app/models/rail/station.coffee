`import DS from 'ember-data'`
`import Ember from 'ember'`

RailStation = DS.Model.extend
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"

  order: Ember.computed "position.order", ->
    @get("position.order")

  position: Ember.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")
      
`export default RailStation`
