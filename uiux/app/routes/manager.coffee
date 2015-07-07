`import Ember from 'ember'`

ManagerRoute = Ember.Route.extend
  model: ->
    tiles = @modelFor "application"
    @store.findAll "truck"
    .then (trucks) -> {tiles, trucks} 

`export default ManagerRoute`
