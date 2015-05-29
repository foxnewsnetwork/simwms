`import Ember from 'ember'`

findByAppointmentNumber = (trucks, apptNo) ->
  trucks.findBy "appointmentNumber", apptNo

StationsStationIndexRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      appointments: @truckAwareAppointments()
      station: @modelFor "stations.station"

  forcedTrucks: ->
    @iotrucks
    .then (trucks) ->
      trucks.mapBy "fire"
      Ember.RSVP.all trucks.mapBy "firePromise"
      .then -> trucks
  truckAwareAppointments: ->
    Ember.RSVP.hash
      appointments: @store.find "appointment", macro: "today"
      trucks: @forcedTrucks()
    .then ({appointments, trucks}) ->
      appointments.map (appointment) ->
        if findByAppointmentNumber trucks, appointment.get "id"
          appointment.set "hasTruckOnSite", true
        appointment

`export default StationsStationIndexRoute`
