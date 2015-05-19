`import Ember from 'ember'`

InventoriesRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.find "live/warehouse"

`export default InventoriesRoute`
