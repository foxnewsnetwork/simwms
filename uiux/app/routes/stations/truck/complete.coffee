`import Ember from 'ember'`

StationsTruckCompleteRoute = Ember.Route.extend
  model: ->
    truck = @modelFor "stations.truck"
    truck.get "weighticketPromise"
    .then (weighticket) ->
      truck: truck
      weighticket: weighticket

`export default StationsTruckCompleteRoute`
