`import DS from 'ember-data'`

LiveGrid = DS.Model.extend
  barns: DS.hasMany "live/barn", async: true
  roads: DS.hasMany "live/road", async: true
  warehouses: DS.hasMany "live/warehouse", async: true
  stations: DS.hasMany "live/station", async: true
  scales: DS.hasMany "live/scale", async: true

  oldestAvailableDock: Ember.computed "availableDocks.@each", ->
    @get("availableDocks.firstObject")

  availableDocks: Ember.computed.filterBy "barns", "status", "okay"

  
`export default LiveGrid`
