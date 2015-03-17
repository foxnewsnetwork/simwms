`import DS from 'ember-data'`

Weighticket = DS.Model.extend
  appointmentNumber: DS.attr "string"
  issuerId: DS.attr "string"
  pounds: DS.attr "number"
  licensePlate: DS.attr "string"
  targetDock: DS.attr "string"
  pictures: DS.hasMany "picture"
  notes: DS.attr "string"

`export default Weighticket`
