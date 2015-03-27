`import Ember from 'ember'`

StationsStationRoute = Ember.Route.extend
  model: (station_id: id) ->
    @store.find "live/scale", id

`export default StationsStationRoute`
