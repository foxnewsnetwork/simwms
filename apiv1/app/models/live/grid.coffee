`import DS from 'ember-data'`
`import Grid from '../grid'`

LiveGrid = Grid.extend
  barns: DS.hasMany "live/barn", async: true
  roads: DS.hasMany "live/road", async: true
  warehouses: DS.hasMany "live/warehouse", async: true
  stations: DS.hasMany "live/station", async: true
  scales: DS.hasMany "live/scale", async: true

`export default LiveGrid`
