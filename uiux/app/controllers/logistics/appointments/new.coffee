`import Ember from 'ember'`
`import validate from 'uiux/validators/appointment'`
`import AtomicMixin from 'uiux/mixins/atomic'`
`import moment from 'moment'`

get = Ember.get
invalidMsg = """
Your new appointment did not pass validation, tough break kid.
"""
lll = (x) ->
  console.log x
  x

LogisticsAppointmentsNewController = Ember.Controller.extend AtomicMixin,
  appointment: Ember.computed.alias "model"
  validateModel: ->
    validate @get "model"
  actions:
    create: (params) ->
      @atomically =>
        @validateModel()
        .then (appointment) ->
          appointment.save()
        .then (appointment) =>
          @transitionToRoute "logistics.appointments.index",
            queryParams:
              macro: "today"
        .catch (errors) =>
          @set "appointmentError", errors
          Ember.assert invalidMsg, errors

`export default LogisticsAppointmentsNewController`
