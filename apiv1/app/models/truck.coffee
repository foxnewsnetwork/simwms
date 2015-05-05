`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

Truck = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/truck", "fireId"
  rail: DSC.belongsTo "rail/truck", "railId"

`export default Truck`
