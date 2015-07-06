`import Ember from 'ember'`

ManagerInventoriesRoute = Ember.Route.extend
  model: ->
    @store.filter "tile", (tile) -> tile.get("tileType") is "warehouse"

`export default ManagerInventoriesRoute`
