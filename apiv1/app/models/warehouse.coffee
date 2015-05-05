`import DS from 'ember-data'`
`import Ember from 'ember'`
`import EmberCPM from 'ember-cpm'`
`import DSC from 'ember-data-complex'`

Warehouse = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/warehouse", "fireId"
  rail: DSC.belongsTo "rail/warehouse", "railId"

  isSetup: Ember.computed.and "fire", "rail"
`export default Warehouse`
