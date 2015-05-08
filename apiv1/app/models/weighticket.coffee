`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

Weighticket = DSC.ModelComplex.extend
  appointmentNumber: DS.attr "string"
  issuerId: DS.attr "string"
  pounds: DS.attr "number"
  licensePlate: DS.attr "string"
  targetDock: DS.attr "string"
  pictures: DS.hasMany "picture"
  updatedAt: DS.attr "date"
  createdAt: DS.attr "date"
  status: DS.attr "string"
  notes: DS.attr "string"
  
  appointment: DSC.belongsTo "appointment", foreignKey: 'appointmentNumber'
  entryScale: DSC.belongsTo "scale", foreignKey: 'issuerId'
  stationNumber: Ember.computed.alias "entryScale.stationNumber"
  barn: DSC.belongsTo "barn", foreignKey: 'targetDock'
  dockNumber: Ember.computed.alias "barn.dockNumber"
  
`export default Weighticket`
