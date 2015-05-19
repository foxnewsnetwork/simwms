`import Ember from 'ember'`

TruckRoute = Ember.Route.extend
  model: (truck_id: id) ->
    @store.find "truck", id

`export default TruckRoute`
