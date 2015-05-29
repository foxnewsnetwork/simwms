`import Ember from 'ember'`

ManagerAppointmentsRoute = Ember.Route.extend
  model: ->
    @store.find "appointment", macro: "today"

`export default ManagerAppointmentsRoute`
