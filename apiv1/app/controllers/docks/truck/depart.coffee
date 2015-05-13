`import Ember from 'ember'`

throttle = (ctx, time, action) -> Ember.run.throttle ctx, action, time

DocksTruckDepartController = Ember.Controller.extend
  truck: Ember.computed.alias "model"
  actions:
    finish: ->
      throttle @, 150, ->
        @get("truck").leaveDock()
        .then (truck) ->
          truck.gotoExit()
        .then (truck) ->
          truck.get "dockId"
        .then (dockId) =>
          @transitionToRoute "docks.dock.index", dockId

`export default DocksTruckDepartController`
