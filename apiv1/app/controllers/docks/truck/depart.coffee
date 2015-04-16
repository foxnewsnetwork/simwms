`import Ember from 'ember'`

DocksTruckDepartController = Ember.Controller.extend
  truck: Ember.computed.alias "model"
  actions:
    finish: ->

`export default DocksTruckDepartController`
