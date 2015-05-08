`import Ember from 'ember'`

DocksRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.all "barn"

`export default DocksRoute`
