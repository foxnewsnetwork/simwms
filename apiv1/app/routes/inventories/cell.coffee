`import Ember from 'ember'`

InventoriesCellRoute = Ember.Route.extend
  model: (cell_id: id) ->
    @iogrid.then => @store.find "live/warehouse", id

`export default InventoriesCellRoute`
