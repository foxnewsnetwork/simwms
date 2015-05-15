`import Ember from 'ember'`
`import CPM from 'ember-cpm'`
`import AtomicMixin from 'apiv1/mixins/atomic'`
`import config from 'apiv1/config/environment'`

StationsTruckExitController = Ember.Controller.extend AtomicMixin,
  truck: Ember.computed.alias "model"
  printTicketLink: CPM.Macros.fmt "truck.weighticketId", "#{config.print}/weightickets/%@"
  actions:
    killTruck: ->
      @atomically =>
        @get "truck.exitScaleIdPromise"
        .then (exitScaleId) =>
          @get "truck"
          .destroyRecord()
          .then ->
            exitScaleId
        .then (scaleId) =>
          @transitionToRoute "stations.station", scaleId

`export default StationsTruckExitController`
