`import Ember from 'ember'`
`import { promiseFilterBy, lll } from 'apiv1/utils/prelude'`

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
      @store.createRecord "truck",
        weighticket: weighticket
        fire:
          speed: 1
          position: "entrance"
          entryScaleId: get weighticket, "issuerId"
          dockId: get weighticket, "targetDock"
          appointmentId: get weighticket, 'appointmentNumber'
          weighticketId: get weighticket, "id"
          arrivedAt: get weighticket, "createdAt"

`export default StationsWeighticketTrucksNewRoute`
