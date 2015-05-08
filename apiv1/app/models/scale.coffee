`import Ember from 'ember'`
`import EmberCPM from 'ember-cpm'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

Scale = DSC.ModelComplex.extend
  fireId: DS.attr "string"
  railId: DS.attr "string"

  fire: DSC.belongsTo "fire/scale", "fireId"
  rail: DSC.belongsTo "rail/scale", "railId"

  isSetup: Ember.computed.and "fire", "rail"

  stationNumber: Ember.computed.alias "rail.stationNumber"
  fireStatus: Ember.computed.alias "fire.status"
  isEntryStation: Ember.computed.alias "rail.isEntryStation"
  status: EmberCPM.Macros.ifNull "fireStatus", 'free'

`export default Scale`
