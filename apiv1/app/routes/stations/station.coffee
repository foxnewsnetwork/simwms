`import Ember from 'ember'`

StationsStationRoute = Ember.Route.extend
  model: (station_id: id) ->
    @store.find "scale", id

`export default StationsStationRoute`
