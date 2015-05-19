`import Ember from 'ember'`
`import validate from 'apiv1/validators/truck'`
`import AtomicMixin from 'apiv1/mixins/atomic'`


StationsWeighticketTrucksNewController = Ember.Controller.extend AtomicMixin,
  truck: Ember.computed.alias "model"
    
  actions:
    finish: ->
      @atomically =>
        @get("truck").save()
        .then (truck) ->
          truck.gotoDock()
        .then (truck) ->
          truck.get "entryScaleIdPromise"
        .then (entryScaleId) =>
          Ember.assert "there is a entry scale id #{entryScaleId}", Ember.isPresent entryScaleId
          @transitionToRoute "stations.station", entryScaleId
      
`export default StationsWeighticketTrucksNewController`
