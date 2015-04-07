`import Ember from 'ember'`

DocksInventoriesRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.find "live/warehouse"


`export default DocksInventoriesRoute`
