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
        .then (truck) ->
          truck.get "entryScaleIdPromise"
        .then (entryScaleId) =>
          Ember.assert "there is a entry scale id #{entryScaleId}", Ember.isPresent entryScaleId
          @transitionToRoute "stations.station", entryScaleId
      
`export default StationsWeighticketTrucksNewController`
