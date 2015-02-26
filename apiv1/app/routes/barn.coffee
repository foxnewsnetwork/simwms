`import Ember from 'ember'`

BarnRoute = Ember.Route.extend
  model: (barn_id: barn_id) ->
    @store.find "barn", barn_id

`export default BarnRoute`
