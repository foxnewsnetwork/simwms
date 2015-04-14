`import Ember from 'ember'`

LogisticsAppointmentsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord "appointment"

  tearDown: Ember.on "deactivate", ->
    model = @controller.get "model"
    model.deleteRecord() if Ember.get(model, "isDirty")

`export default LogisticsAppointmentsNewRoute`
