`import Ember from 'ember'`
`import validate from 'apiv1/validators/batch'`

DocksTruckBatchesNewController = Ember.Controller.extend
  actions:
    batch: ->
      validate @get 'model'
      .then (model) ->
        model.save()
      .then (model) =>
        @transitionToRoute "docks.batch", model.get("id")
      .catch (errors) ->
        @set "batchErrors", errors

`export default DocksTruckBatchesNewController`
