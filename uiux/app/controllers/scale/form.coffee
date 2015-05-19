`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`
`import DebugEx from 'apiv1/utils/debug-ex'`
ScaleFormController = Ember.Controller.extend
  scale: FunEx.computed "model", ->
    @get("model")

  prepare: (rawParams) ->
    origination: @get("model.id")
    origintype: "scale"
    destination: rawParams.get("destination")
    destinytype: "barn"
    speed: 1
    status: "empty"
    grid: @iogrid
  actions:
    newTruck: (params) ->
      @store.createRecord "truck", @prepare params
      .save()
      .then (truck) =>
        @iotrucks.pushObject truck
        @transitionToRoute "manager"

`export default ScaleFormController`
