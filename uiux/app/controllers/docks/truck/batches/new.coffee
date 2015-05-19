`import Ember from 'ember'`
`import validate from 'apiv1/validators/batch'`
`import AtomicMixin from 'apiv1/mixins/atomic'`

DocksTruckBatchesNewController = Ember.Controller.extend AtomicMixin,
  actions:
    batch: ->
      @atomically =>
        validate @get 'model'
        .then (model) ->
          model.save()
        .then (model) =>
          @transitionToRoute "docks.batch", model.get("id")
        .catch (errors) ->
          @set "batchErrors", errors

`export default DocksTruckBatchesNewController`
