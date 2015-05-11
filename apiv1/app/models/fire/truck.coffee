`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`
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

  leaveDock: ->
    @get "dock"
    .then (dock) ->
      dock.releaseTruck()

  arrivedAtAgo: Ember.computed "arrivedAt", ->
    return unless @get("arrivedAt")?
    $.timeago @get "arrivedAt"
    
`export default FireTruck`
