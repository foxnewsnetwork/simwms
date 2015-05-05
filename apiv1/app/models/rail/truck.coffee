`import Ember from 'ember'`
`import DS from 'ember-data'`
`import DSC from 'ember-data-complex'`

RailTruck = DS.Model.extend
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

  arrivedAtAgo: FunEx.computed "arrivedAt", ->
    return unless @get("arrivedAt")?
    $.timeago @get "arrivedAt"
`export default RailTruck`
