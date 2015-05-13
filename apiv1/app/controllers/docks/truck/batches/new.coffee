`import Ember from 'ember'`
`import validate from 'apiv1/validators/batch'`

throttle = (ctx, time, action) -> Ember.run.throttle ctx, action, time

DocksTruckBatchesNewController = Ember.Controller.extend
  actions:
    batch: ->
      throttle @, 150, ->
        validate @get 'model'
        .then (model) ->
          model.save()
        .then (model) =>
          @transitionToRoute "docks.batch", model.get("id")
        .catch (errors) ->
          @set "batchErrors", errors

`export default DocksTruckBatchesNewController`
