`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

Positions = [
  "going to entrance",
  "at entrance",
  "going to dock",
  "at dock", 
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

  gotoDock: (truck) ->
    @get "dock"
    .then (dock) ->
      dock.waitForTruck truck

  gotoExit: ->
    @set "position", "going to exit"
    @save()

  leaveDock: ->
    @get "dock"
    .then (dock) ->
      dock.releaseTruck()
      

  arrivedAtAgo: Ember.computed "arrivedAt", ->
    return unless @get("arrivedAt")?
    $.timeago @get "arrivedAt"
    
`export default FireTruck`
