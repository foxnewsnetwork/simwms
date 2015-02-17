`import Ember from 'ember'`

BarnRoute = Ember.Route.extend
  model: (barn_id: barn_id) ->
    console.log barn_id

`export default BarnRoute`
