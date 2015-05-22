`import Ember from 'ember'`

ManagerInventoriesRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.all "warehouse"

`export default ManagerInventoriesRoute`
