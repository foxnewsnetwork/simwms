`import Ember from 'ember'`

ScalemasterTruckRoute = Ember.Route.extend
  model: (truck_id: id) ->
    @store.find "truck", id

`export default ScalemasterTruckRoute`
