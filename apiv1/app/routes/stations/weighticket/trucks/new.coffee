`import Ember from 'ember'`

get = Ember.get
StationsWeighticketTrucksNewRoute = Ember.Route.extend
  model: ->
    weighticket = @modelFor "stations.weighticket"
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
