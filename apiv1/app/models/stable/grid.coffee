`import DS from 'ember-data'`
`import Grid from '../grid'`

StableGrid = Grid.extend
  barns: DS.hasMany "stable/barn"
  roads: DS.hasMany "stable/road"
  warehouses: DS.hasMany "stable/warehouse"
  stations: DS.hasMany "stable/station"
  scales: DS.hasMany "stable/scale"

`export default StableGrid`
