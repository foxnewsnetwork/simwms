`import Ember from 'ember'`
`import validate from 'uiux/validators/appointment'`
`import AtomicMixin from 'uiux/mixins/atomic'`
`import moment from 'moment'`
`import {withinWorkingHours} from 'uiux/utils/punch-card'`

get = Ember.get
invalidMsg = """
Your new appointment did not pass validation, tough break kid.
"""
appointmentChoices = Ember.A ["dropoff", "pickup", "both"]
.map (v) -> 
  value: v
  presentation: v

LogisticsAppointmentsNewController = Ember.Controller.extend AtomicMixin,
  appointmentChoices: appointmentChoices
  appointment: Ember.computed.alias "model"
  withinWorkingHours: Ember.computed "appointment.expectedAt", ->
    withinWorkingHours @get "appointment.expectedAt"

  validateModel: ->
    validate @get "model"
  actions:
    create: (params) ->
      @atomically =>
        @validateModel()
        .then (appointment) ->
          appointment.save()
        .catch ({errors}) =>
          @set "appointmentError", errors
          Ember.assert invalidMsg, errors
        .then (appointment) =>
          @transitionToRoute "logistics.appointments.index",
            queryParams:
              macro: "today"
          @send "updateAppointments"

`export default LogisticsAppointmentsNewController`
