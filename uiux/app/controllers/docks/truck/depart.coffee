`import Ember from 'ember'`
`import AtomicMixin from 'apiv1/mixins/atomic'`

DocksTruckDepartController = Ember.Controller.extend AtomicMixin,
  truck: Ember.computed.alias "model"
  actions:
    finish: ->
      @atomically =>
        @get("truck").leaveDock()
        .then (truck) ->
          truck.gotoExit()
        .then (truck) ->
          truck.get "dockId"
        .then (dockId) =>
          @transitionToRoute "docks.dock.index", dockId

`export default DocksTruckDepartController`
