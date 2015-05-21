`import Ember from 'ember'`

ManagerController = Ember.Controller.extend
  iomessages: Ember.computed.alias("model")

  rightNow: Ember.computed.alias("clock.rightNow")

  actions:
    clickDock: (dock) ->
      @transitionToRoute "manager.dock", dock.get "id"

    clickStation: (station) ->
      @transitionToRoute "manager.station", station.get "id"
  
`export default ManagerController`
