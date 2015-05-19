`import Ember from 'ember'`
`import FunEx from 'apiv1/utils/fun-ex'`
`import DebugEx from 'apiv1/utils/debug-ex'`
BarnFormController = Ember.Controller.extend
  barn: FunEx.computed "model", ->
    @get("model")
  prepare: (params) ->
    origination: @get("model.id")
    origintype: "barn"
    destination: 1
    destinytype: "scale"
    speed: 1
    status: "empty"
    grid: @iogrid
  putCargoIntoStorage: (params) ->
    @store
    .find "warehouse", params.get("cellno")
    .then (warehouse) -> warehouse.loadWithMaterial()
  dispatchTruckToExit: (params) ->
    @store
    .createRecord "truck", @prepare params
    .save()
    .then (truck) => @iotrucks.pushObject truck

  actions:
    truckDepart: (params) ->
      @get("barn").finishWithTruck()
      @putCargoIntoStorage params
      @dispatchTruckToExit params
      @transitionToRoute "manager"

`export default BarnFormController`
