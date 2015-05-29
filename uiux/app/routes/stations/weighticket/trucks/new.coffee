`import Ember from 'ember'`
`import { promiseFilterBy, lll } from 'uiux/utils/prelude'`

get = Ember.get

StationsWeighticketTrucksNewRoute = Ember.Route.extend
  model: ->
    weighticket = @modelFor "stations.weighticket"
    @existingTruckFor weighticket
    .then (truck) =>
      return truck if truck?
      @newTruckFor weighticket

  existingTruckFor: (weighticket) ->
    @iotrucks.then (trucks) ->
      promiseFilterBy trucks, "weighticketIdPromise", weighticket.get("id").toString().trim()
    .then ([truck, ...]) ->
      truck
  newTruckFor: (weighticket) ->
    @iogrid.then =>
      truck = @store.createRecord "truck",
        fire:
          speed: 1
          position: "at entrance"
          entryScaleId: get weighticket, "issuerId"
          dockId: get weighticket, "targetDock"
          appointmentId: get weighticket, 'appointmentNumber'
          weighticketId: get weighticket, "id"
          arrivedAt: get weighticket, "createdAt"
      truck.weighticket = weighticket
      truck

`export default StationsWeighticketTrucksNewRoute`
