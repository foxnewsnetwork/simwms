`import Ember from 'ember'`

StationsStationIndexRoute = Ember.Route.extend
  model: ->
    appointments: @store.find "appointment", macro: "today"
    station: @modelFor "stations.station"
    trucks: @iotrucks

`export default StationsStationIndexRoute`
