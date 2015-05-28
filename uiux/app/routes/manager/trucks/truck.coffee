`import Ember from 'ember'`

ManagerTrucksTruckRoute = Ember.Route.extend
  model: ({id}) ->
    @iotrucks.then => @store.find "truck", id

`export default ManagerTrucksTruckRoute`
