`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

Barn = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/barn", "fireId"
  rail: DSC.belongsTo "rail/barn", "railId"

  isSetup: Ember.computed.and "fire", "rail"

`export default Barn`
