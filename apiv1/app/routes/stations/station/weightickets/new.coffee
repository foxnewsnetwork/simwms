`import Ember from 'ember'`

StationsStationWeighticketsNewRoute = Ember.Route.extend
  queryParams:
    appointment: true
  model: (appointment: appointment) ->
    Ember.RSVP.hash grid: @iogrid, station: @modelFor("stations.station")
    .then (grid: grid, station: station) =>
      @store.createRecord "weighticket",
        issuerId: Ember.get(station, "id")
        appointmentNumber: appointment
        targetDock: Ember.get(grid, "oldestAvailableDock.dockNumber")

  killRecord: (model) ->
    model.deleteRecord() if model.get("isDirty")

  tearDown: Ember.on "deactivate", ->
    model = @controller.get("model")
    if model? and model.then? and typeof model.then is 'function'
      model.then @killRecord
    else
      @killRecord model

`export default StationsStationWeighticketsNewRoute`
