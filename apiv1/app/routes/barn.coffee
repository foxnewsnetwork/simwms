`import Ember from 'ember'`

BarnRoute = Ember.Route.extend
  model: (barn_id: id) ->
    @iogrid.then => @store.find "live/barn", id

`export default BarnRoute`
