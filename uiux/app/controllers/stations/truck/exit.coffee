`import Ember from 'ember'`
`import CPM from 'ember-cpm'`
`import AtomicMixin from 'uiux/mixins/atomic'`
`import config from 'uiux/config/environment'`

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
