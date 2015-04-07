`import Ember from 'ember'`

LogisticsIndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo "logistics.appointments.index"
  

`export default LogisticsIndexRoute`
