`import Ember from 'ember'`

LogisticsAppointmentsRoute = Ember.Route.extend
  model: ->
    @store.find "appointment"

`export default LogisticsAppointmentsRoute`
