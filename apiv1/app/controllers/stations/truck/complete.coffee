`import Ember from 'ember'`
`import AtomicMixin from 'apiv1/mixins/atomic'`

StationsTruckCompleteController = Ember.Controller.extend AtomicMixin,
  truck: Ember.computed.alias "model.truck"
  weighticket: Ember.computed.alias "model.weighticket"
  actions:
    completeTicket: ->
      @atomically =>
        @get "truck.exitScaleIdPromise"
        .then (scaleId) =>
          weighticket = @get "weighticket"
          weighticket.set "finisherId", scaleId
          weighticket.save()
        .then =>
          @transitionToRoute "stations.truck.exit", @get "truck.id"
        .catch (errors) =>
          @set "mistakes", errors

`export default StationsTruckCompleteController`
