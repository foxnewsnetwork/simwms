`import Ember from 'ember'`
`import Docks from 'uiux/collections/docks'`

lll = (x) -> 
  console.log x
  x

StationsStationWeighticketsNewRoute = Ember.Route.extend
  queryParams:
    appointment: true
  model: ({appointment}) ->
    @store.findAll("tile")
    .then (tiles) =>
      @setupWeighticket(appointment, Docks.fromTiles(tiles))

  setupWeighticket: (apptId, docks) ->
    @store.find("appointment", apptId)
    .then (appointment) =>
      if (ticketId = appointment.get("weighticket.id"))?
        @transitionTo "stations.weighticket.trucks.new", ticketId
      else
        @makeNewWeighticket appointment, docks

  makeNewWeighticket: (appointment, docks) ->
    @store.createRecord "weighticket",
      issuer: @modelFor("stations.station")
      appointment: appointment
      dock: docks.get("firstAvailableDock")
      docks: docks

  killRecord: (model) ->
    model.deleteRecord() if Ember.get model, 'isDirty'

  tearDown: Ember.on "deactivate", ->
    model = @controller.get("model")
    if model? and model.then? and typeof model.then is 'function'
      model.then @killRecord
    else
      @killRecord model

`export default StationsStationWeighticketsNewRoute`
