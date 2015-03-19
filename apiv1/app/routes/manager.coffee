`import Ember from 'ember'`

ManagerRoute = Ember.Route.extend
  model: ->
    @store.find "message"

`export default ManagerRoute`
