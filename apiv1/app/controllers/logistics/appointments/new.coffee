`import Ember from 'ember'`
`import validate from 'apiv1/validators/appointment'`

LogisticsAppointmentsNewController = Ember.Controller.extend
  appointment: Ember.computed.alias "model"
  actions:
    create: (params) ->
      validate @get "model"
      .then (appointment) ->
        theD = new Date Ember.get(params, "expectedAt")
        appointment.set "expectedAt", theD
        appointment.save()
      .then (appointment) => 
        @transitionToRoute "logistics.appointments.index"
      .catch (errors) =>
        @set "appointmentError", errors

`export default LogisticsAppointmentsNewController`
