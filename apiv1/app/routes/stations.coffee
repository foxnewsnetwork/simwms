`import Ember from 'ember'`

StationsRoute = Ember.Route.extend
  model: ->
    @iogrid.then => @store.find "live/scale"

`export default StationsRoute`
