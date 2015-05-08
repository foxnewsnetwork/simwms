`import Ember from 'ember'`

StationsRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.all "scale"

`export default StationsRoute`
