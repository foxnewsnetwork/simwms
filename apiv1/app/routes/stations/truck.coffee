`import Ember from 'ember'`

StationsTruckRoute = Ember.Route.extend
  model: ({truckId}) ->
    @iotrucks.then => @store.find "truck", truckId

`export default StationsTruckRoute`
