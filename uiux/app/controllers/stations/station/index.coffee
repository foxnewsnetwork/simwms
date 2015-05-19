`import Ember from 'ember'`

StationsStationIndexController = Ember.Controller.extend
  appointments: Ember.computed.alias("model.appointments")
  station: Ember.computed.alias("model.station")

  isEntryStation: Ember.computed.alias("station.isEntryStation")

  actions:
    truckArrived: (appointment) ->
      @transitionToRoute "stations.station.weightickets.new", @get("station.id"), 
        queryParams:
          appointment: appointment.get("id")

    truckDeparted: (truck) ->
      truck.prepareToLeave @get "station"
      .then (truck) =>
        @transitionToRoute "stations.truck.departure", truck.get "id"

`export default StationsStationIndexController`