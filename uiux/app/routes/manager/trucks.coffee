`import Ember from 'ember'`

ManagerTrucksRoute = Ember.Route.extend
  model: ->
    @store.findAll "truck"

`export default ManagerTrucksRoute`
