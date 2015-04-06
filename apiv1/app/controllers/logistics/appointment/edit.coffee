`import Ember from 'ember'`

LogisticsAppointmentEditController = Ember.Controller.extend
  actions:
    update: ->
      @get("model").save()
      .then (model) => 
        @transitionToRoute "logistics.appointment.index", model.get("id")

`export default LogisticsAppointmentEditController`
