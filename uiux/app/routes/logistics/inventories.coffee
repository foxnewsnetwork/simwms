`import Ember from 'ember'`

LogisticsInventoriesRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.all "warehouse"

`export default LogisticsInventoriesRoute`
