`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`
`import CPM from 'ember-cpm'`
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

  appointment: DSC.belongsTo "appointment", "appointmentId"  
  weighticket: DSC.belongsTo "weighticket", "weighticketId"  
  entryScale: DSC.belongsTo 'scale', "entryScaleId"
  exitScale: DSC.belongsTo 'scale', "exitScaleId"
  dock: DSC.belongsTo 'barn', "dockId"
  dockPromise: DSC.promiseTo "barn", foreignKey: "dockId", foreignField: "dock2"
  entryScalePromise: DSC.promiseTo "scale", foreignKey: "entryScaleId", foreignField: "entryScale2"
  exitScalePromise: DSC.promiseTo "scale", foreignKey: "exitScaleId", foreignField: "exitScale2"

  isWaitingToEnter: M.among "position", "going to entrance", "at entrance", "entrance"
  isOnSite: M.among "position", "going to dock", "at dock", "leaving dock"
  isLeavingSite: M.among "position", "going to exit", "at exit"
  isMoving: M.among "position", "going to entrance", "going to dock", "leaving dock", "going to exit"
  isStill: M.among "position", "at entrance", "at dock", "at exit"

  deepSeq: -> 
    @get "dockPromise"
    @get "entryScalePromise"
    @get "exitScalePromise"

  isFullyEvaluated: Ember.computed.and "dock2", "entryScale2", "exitScale2"

  gotoDock: (truck) ->
    truck.set "position", "going to dock"
    truck.save()
    .then (truck) ->
      truck.get "dock"
    .then (dock) ->
      dock.waitForTruck truck

  gotoExit: ->
    @set "position", "going to exit"
    @save()

  leaveDock: ->
    truck.set "position", "leaving dock"
    truck.save()
    .then (truck) ->
      truck.get "dock"
    .then (dock) ->
      dock.releaseTruck()

  prepareToLeave: (scale) ->
    @set "position", "at exit"
    @set "exitScale", scale
    @save()
      
  arrivedAtAgo: Ember.computed "arrivedAt", ->
    return unless @get("arrivedAt")?
    $.timeago @get "arrivedAt"
    
`export default FireTruck`
