`import Ember from 'ember'`

LogisticsInventoriesRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.find "live/warehouse"


`export default LogisticsInventoriesRoute`
