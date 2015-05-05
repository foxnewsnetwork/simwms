`import DS from 'ember-data'`

RailGrid = DS.Model.extend
  barns: DS.hasMany "rail/barn"
  roads: DS.hasMany "rail/road"
  warehouses: DS.hasMany "rail/warehouse"
  stations: DS.hasMany "rail/station"
  scales: DS.hasMany "rail/scale"

`export default RailGrid`