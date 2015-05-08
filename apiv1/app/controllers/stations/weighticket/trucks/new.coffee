`import Ember from 'ember'`
`import validate from 'apiv1/validators/truck'`

StationsWeighticketTrucksNewController = Ember.Controller.extend
  truck: Ember.computed.alias "model"
    
  actions:
    finish: ->
      @get("truck").save()
      .then (truck) ->
        truck.gotoDock()
      .then =>
        @transitionToRoute "stations.station", @get "model.weighticket.issuerId"
      
`export default StationsWeighticketTrucksNewController`
