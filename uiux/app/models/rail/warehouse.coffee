`import DS from 'ember-data'`
`import Ember from 'ember'`
`import EmberCPM from 'ember-cpm'`

Warehouse = DS.Model.extend
  x: DS.attr "number"
  y: DS.attr "number"
  z: DS.attr "number"
  status: DS.attr "string"
  tileName: DS.attr "string"

  loadWithMaterial: ->
    @set "status", "full"
    @save()

  hasStuff: Ember.computed "status", ->
    Ember.isBlank(@get "status") or (@get("status") isnt "empty")

  order: Ember.computed.alias "position.order"

  position: Ember.computed "x", "y", "z", ->
    return unless @get("x")? and @get("y")?
    PixiPosition.create 
      x: @get("x") 
      y: @get("y")
      constant: @get("z")

  colName: Ember.computed "x", ->
    switch parseInt @get "x"
      when -3 then "a"
      when 3 then "b"
      when 4 then "c"
      when 5 then "d"
      when 6 then "e"
      else throw new Error "Not sure what #{@get 'x'} maps to"

  rowName: Ember.computed.alias("y")

  squareName: EmberCPM.Macros.join "colName", "rowName", "-"

`export default Warehouse`
