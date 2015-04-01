`import DS from 'ember-data'`
`import Warehouse from '../warehouse'`

StableWarehouse = Warehouse.extend
  batches: DS.hasMany "batch", async: true

`export default StableWarehouse`
