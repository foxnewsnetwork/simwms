`import Ember from 'ember'`
`import WeighticketParams from 'apiv1/utils/weighticket-params'`

StationsStationArrivalsRoute = Ember.Route.extend
  model: (station_id: id) ->
    
    params: WeighticketParams.setup @store
    station: @modelFor "stations.station"

`export default StationsStationArrivalsRoute`
