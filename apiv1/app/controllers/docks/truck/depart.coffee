`import Ember from 'ember'`

DocksTruckDepartController = Ember.Controller.extend
  truck: Ember.computed.alias "model"
  actions:
    finish: ->
      @get "truck"
      .leaveDock()
      .then (dock) =>
        @transitionToRoute "docks.dock.index", dock.get("id")

`export default DocksTruckDepartController`
