`import DS from 'ember-data'`
`import Ember from 'ember'`
`import EmberCPM from 'ember-cpm'`
`import DSC from 'ember-data-complex'`
`import APM from '../utils/async-property-macros'`

Warehouse = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/warehouse", "fireId"
  rail: DSC.belongsTo "rail/warehouse", "railId"

  isSetup: Ember.computed.and "fire", "rail"

  x: DS.attr "number"
  y: DS.attr "number"

  squareName: EmberCPM.Macros.join "colName", "rowName", "-"

  colName: Ember.computed "x", ->
    switch parseInt @get "x"
      when -3 then "a"
      when 3 then "b"
      when 4 then "c"
      when 5 then "d"
      when 6 then "e"
      else throw new Error "Not sure what #{@get 'x'} maps to"

  rowName: Ember.computed.alias("y")

  batches: Ember.computed "railId", ->
    return unless Ember.isPresent @get "railId"
    @store.find "batch", warehouse_id: @get("railId")

  hasStuff: Ember.computed.notEmpty "batches"
`export default Warehouse`
