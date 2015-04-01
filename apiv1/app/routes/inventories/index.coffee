`import Ember from 'ember'`

InventoriesIndexRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.find "live/warehouse"

`export default InventoriesIndexRoute`
