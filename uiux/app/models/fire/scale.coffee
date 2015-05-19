`import Ember from 'ember'`
`import DS from 'ember-data'`

FireScale = DS.Model.extend
  status: DS.attr "string"
  tileName: DS.attr "string"

  stationNumber: Ember.computed.alias("tileName")
`export default FireScale`
