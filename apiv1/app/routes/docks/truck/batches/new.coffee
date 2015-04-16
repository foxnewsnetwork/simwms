`import Ember from 'ember'`

DocksTruckBatchesNewRoute = Ember.Route.extend
  model: ->
    truck = @modelFor "docks.truck"
    @store.createRecord "batch",
      truck: truck
      weighticketId: Ember.get truck, "weighticketId"
      entryDockId: Ember.get truck, "destination"
      
  tearDown: Ember.on "deactivate", ->
    model = @controller.get "model"
    model.deleteRecord() if Ember.get(model, "isDirty")


`export default DocksTruckBatchesNewRoute`
