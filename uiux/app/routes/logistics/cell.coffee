`import Ember from 'ember'`

LogisticsCellRoute = Ember.Route.extend
  model: (cell_id: id)->
    @iogrid.then => @store.find "warehouse", id

`export default LogisticsCellRoute`
