`import Ember from 'ember'`

ManagerInventoriesCellRoute = Ember.Route.extend
  model: (cell_id: id)->
    @iogrid.then => @store.find "warehouse", id

`export default ManagerInventoriesCellRoute`
