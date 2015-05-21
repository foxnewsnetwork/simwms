`import Ember from 'ember'`

StationRoute = Ember.Route.extend
  model: ({stationId}) ->
    @iogrid.then => @store.find "scale", stationId

`export default StationRoute`
