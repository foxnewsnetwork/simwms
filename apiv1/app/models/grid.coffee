`import Ember from 'ember'`

Grid = Ember.Object.extend
  barns: []
  roads: []
  warehouses: []
  stations: []
  scales: []

  badBarns: Ember.computed.filterBy "barns", "isSetup", false
  badScales: Ember.computed.filterBy "scales", "isSetup", false
  badWarehouses: Ember.computed.filterBy "warehouses", "isSetup", false

  barnsAreSetup: Ember.computed.empty "badBarns"
  scalesAreSetup: Ember.computed.empty "badScales"
  warehousesAreSetup: Ember.computed.empty "badWarehouses"
  
  hasBeenSetup: Ember.computed.and "barnsAreSetup", "scalesAreSetup", "warehousesAreSetup"
  
  pixiGrid: Ember.computed "barns.@each", "roads.@each", "warehouses.@each", "stations.@each", "scales.@each", ->
    PixiGrid.create
      barns: @get("barns")
      roads: @get("roads")
      warehouses: @get("warehouses")
      stations: @get("stations")
      scales: @get("scales")

`export default Grid`