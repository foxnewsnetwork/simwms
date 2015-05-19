`import Ember from 'ember'`
`import validate from 'uiux/validators/batch'`
`import AtomicMixin from 'uiux/mixins/atomic'`

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
