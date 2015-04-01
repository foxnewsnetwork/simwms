`import DS from 'ember-data'`

Batch = DS.Model.extend
  appointment: DS.belongsTo "appointment"
  warehouse: DS.belongsTo "warehouse"

  permalink: DS.attr "string"
  description: DS.attr "string"
  quantity: DS.attr "string"
  createdAt: DS.attr "date"

`export default Batch`
