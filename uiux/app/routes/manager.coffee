`import Ember from 'ember'`

ManagerRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      tiles: @store.findAll "tile"
      trucks: @store.findAll "truck"

`export default ManagerRoute`
