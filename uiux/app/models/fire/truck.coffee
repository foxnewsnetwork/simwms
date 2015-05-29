`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`
`import CPM from 'ember-cpm'`
`import D from 'uiux/utils/debug-ex'`
M = CPM.Macros

Positions = [
  "going to entrance",
  "at entrance",
  "going to dock",
  "at dock",
  "leaving dock",
  "going to exit",
  "at exit"
]
FireTruck = DSC.ModelComplex.extend
  speed: DS.attr "number"
  position: DS.attr "string"
  
  dockedAt: DS.attr "date"
  undockedAt: DS.attr "date"
  arrivedAt: DS.attr "date"
  departedAt: DS.attr "date"
  
  entryScaleId: DS.attr "string"
  exitScaleId: DS.attr "string"
  dockId: DS.attr "string"
  appointmentId: DS.attr "string"
  weighticketId: DS.attr "string"

  appointment: DSC.belongsTo2 "appointment", foreignKey: "appointmentId", promiseField: "appointmentPromise"
  weighticket: DSC.belongsTo2 "weighticket", foreignKey: "weighticketId", promiseField: "weighticketPromise"
  entryScale: DSC.belongsTo2 'scale', foreignKey: "entryScaleId", promiseField: "entryScalePromise"
  exitScale: DSC.belongsTo2 'scale', foreignKey: "exitScaleId", promiseField: "exitScalePromise"
  dock: DSC.belongsTo2 'barn', foreignKey: "dockId", promiseField: "dockPromise"

  isWaitingToEnter: M.among "position", "going to entrance", "at entrance", "entrance"
  isOnSite: M.among "position", "going to dock", "at dock", "leaving dock"
  isLeavingSite: M.among "position", "going to exit", "at exit"
  isMoving: M.among "position", "going to entrance", "going to dock", "leaving dock", "going to exit"
  isStill: M.among "position", "at entrance", "at dock", "at exit"

  isFullyEvaluated: Ember.computed.and "dock2", "entryScale2", "exitScale2"

  gotoDock: (truck) ->
    @set "position", "going to dock"
    @save()
    
    @forceDock().then (dock) ->
      dock.waitForTruck truck

  gotoExit: ->
    @set "position", "going to exit"
    @save()

  leaveDock: ->
    @set "position", "leaving dock"
    @save()

    @forceDock().then (dock) ->
      dock.releaseTruck()

  forceDock: ->
    @get "dock"
    @get "dockPromise"

  prepareToLeave: (scale) ->
    @set "position", "at exit"
    @set "exitScale", scale
    @save()
      
  arrivedAtAgo: Ember.computed "arrivedAt", ->
    return unless @get("arrivedAt")?
    $.timeago @get "arrivedAt"
    
`export default FireTruck`
