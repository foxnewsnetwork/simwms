`import Ember from 'ember'`
`import EmberCPM from 'ember-cpm'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

Weighticket = DSC.ModelComplex.extend
  pounds: DS.attr "number"
  licensePlate: DS.attr "string"
  status: DS.attr "string"
  notes: DS.attr "string"
  finishPounds: DS.attr "number"
  
  updatedAt: DS.attr "moment"
  createdAt: DS.attr "moment"

  files: DS.attr "files"

  pictures: DS.hasMany "picture"
  appointment: DS.belongsTo "appointment"
  truck: DS.belongsTo "truck"
  issuer: DS.belongsTo "tile"
  finisher: DS.belongsTo "tile"
  dock: DS.belongsTo "tile"
  netWeight: EmberCPM.Macros.difference "pounds", "finishPounds"
  
`export default Weighticket`
