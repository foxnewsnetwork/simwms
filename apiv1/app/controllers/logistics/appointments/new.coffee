`import Ember from 'ember'`
`import validate from 'apiv1/validators/appointment'`
`import moment from 'moment'`

get = Ember.get
throttle = (ctx, time, action) -> Ember.run.throttle ctx, action, time
invalidMsg = """
Your new appointment did not pass validation, tough break kid.
"""

LogisticsAppointmentsNewController = Ember.Controller.extend
  appointment: Ember.computed.alias "model"
  validateModel: ->
    validate @get "model"
  actions:
    create: (params) ->
      throttle @, 125, ->
        theD = moment( get params, "expectedAt" ).format()
        @set "appointment.expectedAt", theD
        @validateModel()
        .then (appointment) ->
          appointment.save()
        .then (appointment) =>
          @transitionToRoute "logistics.appointments.index"
        .catch (errors) =>
          @set "appointmentError", errors
          Ember.assert invalidMsg, errors

`export default LogisticsAppointmentsNewController`
