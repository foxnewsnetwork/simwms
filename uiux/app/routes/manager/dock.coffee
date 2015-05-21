`import Ember from 'ember'`

ManagerDockRoute = Ember.Route.extend
  model: ({dockId}) ->
    @iogrid.then => @store.find "barn", dockId

`export default ManagerDockRoute`
