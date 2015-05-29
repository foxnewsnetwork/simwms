`import Ember from 'ember'`

reduceBuildWith = (ys, xs, callback) ->
  xs
  .reduce callback,
    acc: []
    other: ys
  .acc

combine = (xs) ->
  with: (ys) ->
    givenThat: (condition) ->
      i = 0
      j = 0
      output = []
      while i < xs.get("length") and j < ys.get("length")
        x = xs.objectAt i
        y = ys.objectAt j
        if condition x, y
          output.push [x,y]
        else
          output.push [x]

      reduceBuildWith ys, xs, ({acc, other}, x) ->
        [y, ys...] = other
        console.log x
        if condition x, y
          acc.push [x,y] 
          other = ys
        else
          acc.push [x]
        acc: acc
        other: other

StationsStationIndexController = Ember.Controller.extend
  appointments: Ember.computed.alias("model.appointments")
  station: Ember.computed.alias("model.station")
  trucks: Ember.computed.alias("model.trucks")
  truckAwareAppointments: Ember.computed "appointments.@each.id", "trucks.@each.appointmentNumber", ->
    trucks = @get "trucks"
    @get "appointments"
    .map (appointment) =>
      if trucks.findByAppointmentNumber appointment.get "id"
        appointment.set "hasTruckOnSite", true
      appointment
    

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
