`import Ember from 'ember'`

DocksDockRoute = Ember.Route.extend
  model: (dock_id: id) ->
    @iogrid.then => @store.find "live/barn", id
  actions:
    exitRole: ->
      @transitionTo "index"

`export default DocksDockRoute`
