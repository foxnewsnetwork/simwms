`import Ember from 'ember'`

lll = (x) -> 
  console.log x
  x

StationsStationWeighticketsNewRoute = Ember.Route.extend
  queryParams:
    appointment: true
  model: ({appointment}) ->
    Ember.RSVP.hash grid: @iogrid, station: @modelFor("stations.station")
    .then ({grid, station}) =>
      window.weighticket = @store.createRecord "weighticket",
        issuerId: Ember.get(station, "id")
        appointmentNumber: appointment

  killRecord: (model) ->
    model.deleteRecord() if Ember.get model, 'isDirty'

  tearDown: Ember.on "deactivate", ->
    model = @controller.get("model")
    if model? and model.then? and typeof model.then is 'function'
      model.then @killRecord
    else
      @killRecord model

`export default StationsStationWeighticketsNewRoute`
