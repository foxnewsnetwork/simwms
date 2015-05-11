`import Ember from 'ember'`

DocksTruckBatchesNewRoute = Ember.Route.extend
  model: ->
    truck = @modelFor "docks.truck"
    truck.get("fire")
    .then (fire) ->
      truck: truck
      weighticketId: Ember.get fire, "weighticketId"
      entryDockId: Ember.get fire, "dockId"
    .then (initialParams) =>
      @store.createRecord "batch", initialParams
      
  tearDown: Ember.on "deactivate", ->
    model = @controller.get "model"
    model.deleteRecord() if Ember.get(model, "isDirty")


`export default DocksTruckBatchesNewRoute`
