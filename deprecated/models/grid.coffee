`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

Grid = DS.Model.extend
  barns: DS.hasMany "barn"
  roads: DS.hasMany "road"
  warehouses: DS.hasMany "warehouse"
  stations: DS.hasMany "station"
  scales: DS.hasMany "scale"

  pixiGrid: Ember.computed "barns.@each", "roads.@each", "warehouses.@each", "stations.@each", "scales.@each", ->
    PixiGrid.create
      barns: @get("barns")
      roads: @get("roads")
      warehouses: @get("warehouses")
      stations: @get("stations")
      scales: @get("scales")
`export default Grid`
