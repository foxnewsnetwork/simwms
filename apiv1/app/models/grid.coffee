`import DS from 'ember-data'`
`import FunEx from 'apiv1/utils/fun-ex'`
`import PixiGrid from 'apiv1/utils/pixi-grid'`

Grid = DS.Model.extend
  barns: DS.hasMany "barn"
  roads: DS.hasMany "road"
  warehouses: DS.hasMany "warehouse"
  stations: DS.hasMany "station"
  scales: DS.hasMany "scale"

  pixiGrid: FunEx.computed "barns.@each", "roads.@each", "warehouses.@each", "stations.@each", "scales.@each", ->
    PixiGrid.create
      barns: @get("barns")
      roads: @get("roads")
      warehouses: @get("warehouses")
      stations: @get("stations")
      scales: @get("scales")


`export default Grid`
