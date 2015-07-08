`import Ember from 'ember'`

ManagerInventoriesRoute = Ember.Route.extend
  model: ->
    @modelFor "manager"
    .tiles
    .filterBy "tileType", "warehouse"

`export default ManagerInventoriesRoute`
