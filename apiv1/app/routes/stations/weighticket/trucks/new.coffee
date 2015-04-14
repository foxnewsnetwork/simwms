`import Ember from 'ember'`

inferStatus = (ticket) -> if Ember.get(ticket, "targetDock")? then "moving" else "idle"
StationsWeighticketTrucksNewRoute = Ember.Route.extend
  model: ->
    weighticket = @modelFor "stations.weighticket"
    @iogrid.then =>
      @store.createRecord "truck",
        weighticketId: Ember.get weighticket, "id"
        arrivedAt: Ember.get weighticket, "createdAt"
        status: inferStatus(weighticket)
        origination: Ember.get weighticket, "issuerId"
        origintype: "live/scale"
        destination: Ember.get weighticket, "targetDock"
        destinytype: "live/barn"

`export default StationsWeighticketTrucksNewRoute`
