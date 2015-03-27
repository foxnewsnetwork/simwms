`import Ember from 'ember'`

StationsStationIndexController = Ember.Controller.extend
  appointments: Ember.computed.alias("model.appointments")
  station: Ember.computed.alias("model.station")

  isEntryStation: Ember.computed.alias("station.isEntryStation")

`export default StationsStationIndexController`
