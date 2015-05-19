`import Ember from 'ember'`

DocksInventoriesRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.all "warehouse"


`export default DocksInventoriesRoute`
