`import Ember from 'ember'`
`import validate from 'apiv1/validators/truck'`

throttle = (ctx, time, action) -> Ember.run.throttle ctx, action, time

StationsWeighticketTrucksNewController = Ember.Controller.extend
  truck: Ember.computed.alias "model"
    
  actions:
    finish: ->
      throttle @, 200, ->
        @get("truck").save()
        .then (truck) ->
          truck.gotoDock()
        .then =>
          @transitionToRoute "stations.station", @get "model.weighticket.issuerId"
      
`export default StationsWeighticketTrucksNewController`
